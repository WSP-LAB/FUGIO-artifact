# FUGIO-artifact
[FUGIO](https://github.com/WSL-LAB/FUGIO) is the first 
automatic exploit generation (AEG) tool for PHP object injection (POI) vulnerabilities.
This repository includes Docker images to run the experiments performed in the paper.
We tested our Docker images and running scripts on Ubuntu 18.04 host machine.

## Prepare Docker containers
#### 1. Install Docker
To install Docker CE, please follow the instructions in this
[link](https://docs.docker.com/install/linux/docker-ce/ubuntu/).

#### 2. Prepare Docker as a non-root user
For our scripts not to ask you for sudo password, we assumed that
you run Docker commands as a non-root user. Please follow the instructions in
this [link](https://docs.docker.com/install/linux/linux-postinstall/).

#### 3. Build Docker images
We provide three Docker images depending on PHP versions: PHP 5.4, PHP 5.6, and PHP 7.2.
Build each Docker image by running `1_docker_build.sh` in each folder. Each takes about 5 ~ 20 minutes.
> When building a Docker image for PHP 5.4,
>
> ```
> cd php5.4
> ./1_docker_build.sh
> ```


#### 4. Run Docker containers
After building a Docker image, run the corresponding `2_docker_run.sh` and `3_docker_exec.sh` scripts.

#### 5. Run RabbitMQ Docker
FUGIO uses RabbitMQ for communicating between different modules. 
We can set up RabbitMQ using `run_rabbitmq.sh`.
- Username: fugio
- Password: fugio_password
- RabbitMQ Management port: 15672

## Prepare for running FUGIO
#### 1. Install dependencies
In the Docker container, execute the following commands.
- PHP 5.4:
    ```
    cd /FUGIO
    ./install_54.sh
    /start.sh &
    /create_user.sh
    ```

- PHP 5.6:
    ```
    cd /FUGIO
    ./install_56.sh
    /start.sh &
    /create_user.sh
    ```

- PHP 7.2:
    ```
    cd /FUGIO
    ./install_72.sh
    /start.sh &
    /create_user.sh
    ```

#### 2. Build benchmarks
We evaluated 30 PHP applications in the paper. 
We uploaded all target applications' source code in each `benchmarks/org_code`.

We also provide dump files of applications and databases for convenient settings.
If you want to install all applications, run `install.py all`.
If you want to install each application, `install.py [dump file path]`.
The applications will be installed in `/app/` directory.
```
cd /FUGIO/benchmarks
./install.py [all/dump file path]
```

For other applications, it requires manual installation.

## Run FUGIO
#### 1. Setting for monitoring POI vulnerabilities
Add .htaccess file for monitoring POI vulnerabilities by running `htaccess.py`.
```
cd /FUGIO
./htaccess.py on
```
If you want to stop monitoring, run `htaccess.py off`.

#### 2. Prepare two terminals
We need at least two Docker container terminals. One is for running FUGIO and the other is for triggering POI vulnerabilities.
You can connect two shells by running `3_docker_exec.sh` in two terminals respectively.


#### 3. Run FUGIO
In the first terminal, run FUGIO using `run_FUGIO_XX.sh` with the target applications path (i.e. `/app/[target application]`).
In the other terminal, trigger the corresponding POI vulnerability using the given scripts.

I recommend the following applications for obtaining results fastly.
- PHP 5.4: Open Web Analytics, CMS Made Simple, SwiftMailer 5.0.1, SwiftMailer 5.1.0, Smarty, CubeCart
- PHP 5.6: EverestForms, Emailsubscribers, PHPExcel 1.8.1, PHPExcel 1.8.2, WooCommerce 2.6.0
- PHP 7.2: SwiftMailer 5.4.12, SwiftMailer 6.0.0, Monolog 1.7.0, Laminas

**_Warning._**  If you get the results that you expect, I recommend stopping the FUGIO.
If not, FUGIO might last 12 hours and require hundreds GBs of disk space for some applications.
Since it might identify millions of POP chains and try fuzzing for the identified chains.

#### 3-1. Run FUGIO in the first terminal
- PHP 5.4:
    ```
    ./run_FUGIO_54.sh [target application path]
    ```
    - For CubeCart,
        ```
        ./run_FUGIO_cubecart.sh [target application path]
        ```

- PHP 5.6:
    ```
    ./run_FUGIO_56.sh [target application path]
    ```

- PHP 7.2:
    ```
    ./run_FUGIO_72.sh [target application path]
    ```

**_Warning._** FUGIO uses all CPU cores by default. If you want to change it, add `--cpus=` option.
Also, the size of each Docker container can be over 20 GB after running FUGIO.
```
./run_FUGIO_XX.sh --cpus=12 [target application path]
```

If you run the command, FUGIO starts to analyze the source code of the target application.
At the first run, FUGIO generates a dump file in `Files/dump_files`.
It is for reducing time to analyze the target source code when you run FUGIO again for the same application.
If the source code of the target application changed, you need to delete its dump file and run the script again.

> When you run FUGIO on Smarty (PHP 5.4),
> 
> ```
> # ./run_FUGIO.sh /app/smarty-3.1.28/
> /app/smarty-3.1.28/index.php
> 
> /app/smarty-3.1.28/libs/Smarty.class.php
> 
> /app/smarty-3.1.28/libs/Autoloader.php
> 
> /app/smarty-3.1.28/libs/SmartyBC.class.php
> 
> ...
> 
> /app/smarty-3.1.28/vendor/composer/installed.php
> 
> /app/smarty-3.1.28/vendor/composer/InstalledVersions.php
> 
> /app/smarty-3.1.28/vendor/composer/autoload_namespaces.php
> 
> Done! (215)
> CLASSES: 175 (Before autoload)
> 
> ```
> 
> FUGIO generates `app.smarty-3.1.28.dump` file in `Files/dump_files/` after successfully analyzing the source code.
> 
> ```
> # ls Files/dump_files/
> app.smarty-3.1.28.dump
> ```


#### 3-2. Trigger POI vulnerabilities in the second terminal
After FUGIO finishes analyzing the source code, FUGIO starts to monitor a POI vulnerability.
We can trigger POI vulnerabilities using crawlers, spiders, or manual browsing.
In this artifact, we provide scripts for triggering each POI vulnerability.

- PHP 5.4:
    - Contao CMS, Piwik, GLPI, Joomla, CubeCart, CMS Made Simple, Open Web Analytics, Vanilla Forums:
        ```
        cd /FUGIO/Trigger/
        ./ccs_run.py [target application path]
        ```
    - SwiftMailer 5.0.1, SwiftMailer 5.1.0, Smarty, ZendFramework: 
        ```
        cd /FUGIO/Trigger/
        ./lib_run.py [target application path]
        ```

- PHP 5.6:
    - PHPExcel 1.8.1, PHPExcel 1.8.2, Dompdf, Guzzle, WooCommerce 2.6.0, WooCommerce 3.4.0, Emailsubscribers, EverestForms:
        ```
        cd /FUGIO/Trigger/
        ./wp_run.py [target application path]
        ```

- PHP 7.2:
    - TCPDF, SwiftMailer 5.4.12, SwiftMailer 6.0.0, Monolog 1.7.0, Monolog 1.18.0, Monolog 2.0.0, Laminas, Yii:
        ```
        cd /FUGIO/Trigger/
        ./lib_run.py [target application path]
        ```
    - Drupal7: https://github.com/WSP-LAB/FUGIO/tree/main/Trigger/drupal
    - TYPO3: https://github.com/WSP-LAB/FUGIO/tree/main/Trigger/typo3

> When you trigger the POI vulnerability of Smarty (PHP 5.4),
> 
> ```
> # cd Trigger/
> # ./lib_run.py /app/smarty-3.1.28/ 
> ```
> 
> FUGIO starts to analyze the POI vulnerability and identify POP chains and generate their exploit objects.
> ```
> [#] Exploitable!
>     - Injected Function: unserialize()
> MAGIC METHODS: ['__destruct', '__call', '__callStatic', '__get', '__set', '__isset', '__unset', '__sleep', '__wakeup', '__toString', '__set_state', '__clone']
> DECL_CLASSES: 304 (After autoload)
> DECL_INTERFACES: 15 (After autoload)
> DECL_TRAITS: 0 (After autoload)
> USER_CLASSES: 170 (After autoload)
> CLASSES: 175 (Before autoload)
> 
> ...
> 
> [+] Time: 00:00:01:09
> [+] Fuzzer - Chain Found: 7/49 (14.29 %)
> [+] Fuzzer - Chain Tried: 15/15 (100.0 %) - Skip: 0
> [+] Fuzzer - Chain Tried (+ Skip): 15/15 (100.0 %)
> [+] Fuzzer - Running: 4/12 (33.33 %)
> [+] Fuzzer - Sink Reach: 1/7 (14.29 %)
> [+] Fuzzer - Success: 1/7 (14.29 %)
> 
> ...
> ```


#### 3. The results of FUGIO
All outputs are generated in the `Files/fuzzing/[app_path.time]/PUT/` directory.
- `put-head.php` and `put-body.php`: a PUT file 
- `inst_PUT.php`: an instrumented PUT file for fuzzing the target application
- `procX_X_X_X_X_X.chain`: an identified POP chain
- `PROBABLY_EXPLOITABLE`: a directory for probably exploitable exploit objects (payloads)
- `EXPLOITABLE`: a directory for exploitable exploit objects (payloads)

> When running FUGIO on Smarty (PHP 5.4),
> - this is the final result:
> ```
> [+] Time: 00:00:01:54
> [+] Fuzzer - Chain Found: 7/49 (14.29 %)
> [+] Fuzzer - Chain Tried: 15/15 (100.0 %) - Skip: 0
> [+] Fuzzer - Chain Tried (+ Skip): 15/15 (100.0 %)
> [+] Fuzzer - Running: 0/12 (0.0 %)
> [+] Fuzzer - Sink Reach: 1/7 (14.29 %)
> [+] Fuzzer - Success: 1/7 (14.29 %)
> 
> Total time: 120.78427648544312(s)
> ```
> - there are 15 POP chains:
>     ```
>     # cd Files/fuzzing/app.smarty-3.1.28.yymmddhhmmss/PUT
>     # ls proc*.chain
>     proc0_1_3_1_240_2.chain  proc0_4_3_1_240_2.chain  proc1_2_3_0_252_2.chain  proc1_5_3_0_252_2.chain  proc32_1_3_2_45_1.chain
>     proc0_2_3_1_240_2.chain  proc0_5_3_1_240_2.chain  proc1_3_3_0_252_2.chain  proc24_1_3_2_45_1.chain  proc3_1_2_1_22_1.chain
>     proc0_3_3_1_240_2.chain  proc1_1_3_0_252_2.chain  proc1_4_3_0_252_2.chain  proc2_1_2_0_14_2.chain   proc44_1_3_1_37_2.chain
>     ```
> - there is one exploit object:
>     ```
>     # ls EXPLOITABLE
>     XXXXXXXXXXXXXX_proc44_1_3_1_37_2.chain.php_887700_unlink
>     ```
> - there are 214 probably exploititable objects:
>     ```
>     # ls PROBABLY_EXPLOITABLE | wc -l
>     214
>     # ls PROBABLY_EXPLOITABLE/
>     # ls PROBABLY_EXPLOITABLE/
>     XXXXXXXXXXXXXX_proc44_1_3_1_37_2.chain.php_887700_unlink               XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array
>     XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array  XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array
>     XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array  XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array
>     XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array  XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array
>     XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array  XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array
>     XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array  XXXXXXXXXXXXXX_proc2_1_2_0_14_2.chain.php_909905_call_user_func_array
>     ...
>     ```
>     Among 214 POP chains, there are unique 2 POP chains: `proc44_1_3_1_37_2.chain` and `proc2_1_2_0_14_2.chain`.
>     When counting the number of probably exploitable POP chains, we exclude exploitable POP chains.
>     Thus `proc44_1_3_1_37_2.chain` is excluded and the number of probably exploitable POP chains is one.


#### 4. Reproduce evaluations in the paper
This artifact provides environments for reproducing evaluations in Sections 7.2 and 7.3 producing Tables 1, 2, and 3 in the paper.

1. For reproducing Table 1, run `./config.py org` in php5.4. php5.6, and `php7.2` Docker containers
before following the step 3 ["Run FUGIO"](https://github.com/WSP-LAB/FUGIO-artifact#3-run-fugio).
    ```
    cd /FUGIO
    ./config.py org
    ```

    Then, run the following commands depending on the version of PHP and applications.
    - php 5.4: 
      - CubeCart: `./run_FUGIO_cubecart.sh`
      - Others: `./run_FUGIO_54.sh `
    - php 5.6: `./run_FUGIO_56.sh`
    - php 7.2: `./run_FUGIO_72.sh`
    
    The number of true positive chains in Table 1 is manually analyzed. 
    We provide an utility for helping the analysis of the generated POP chains 
    in the step 5 ["Analyzing the results"](https://github.com/WSP-LAB/FUGIO-artifact#5-analyzing-the-results).

2. For reproducing Table 2, run `./config.py ccs` in `php5.4` Docker container
before following the step 3 ["Run FUGIO"](https://github.com/WSP-LAB/FUGIO-artifact#3-run-fugio).
    ```
    cd /FUGIO
    ./config.py ccs
    ```

    Then, run the following commands depending on the applications.
    - php 5.4:
      - CubeCart: `./run_FUGIO_cubecart_all.sh`
      - Others: `./run_FUGIO_54_all.sh`
      
    Since Dahse et al. did not provide the details of each chain, we could not match each exploitable chain. 
    Thus, we compared the numbers of exploit objects that FUGIO reported with the numbers reported in their paper.

3. For reproducing Table 3, run `./config.py phpggc` in `php5.4`, `php5.6` and `php7.2` Docker containers,
before following the step 3 ["Run FUGIO"](https://github.com/WSP-LAB/FUGIO-artifact#3-run-fugio).
    ```
    cd /FUGIO
    ./config.py phpggc
    ```

    Then, run the following commands depending on the version of PHP.
    - php 5.4:
      - CubeCart: `./run_FUGIO_cubecart.sh`
      - Others: `./run_FUGIO_54.sh `
    - php 5.6: `./run_FUGIO_56.sh`
    - php 7.2: `./run_FUGIO_72.sh`
    
    [PHPGGC](https://github.com/ambionics/phpggc) provides templates for generating POP exploits. 
    However, it is not clear that what POP gadget each POP chain consists of. 
    Thus, we provide POP chains from PHPGGC in the repo (https://github.com/WSP-LAB/FUGIO/tree/main/PHPGGC) by analyzing each template. 
    `chain_analyzer` in ["Run FUGIO"](https://github.com/WSP-LAB/FUGIO-artifact#5-analyzing-the-results) 
    also will be helpful for analyzing the reported POP chains.

#### 5. Analyzing the results
We provide `chain_analyzer` to easily analyze the generated POP chains. 
For using it, follow the instructions.
```
cd /app
ln -s /FUGIO/chain_analyzer
```
Then, enter website "http://[ip]:[port]/chain_analyzer/chain_analyzer.php?file_path=[chain_path]". 
For each Docker image, the port is assigned as 5454 (php 5.4), 5656 (php 5.6), and 7272 (php 7.2). 
For example, http://127.0.0.1:5454/chain_analyzer/chain_analyzer.php?file_path=/FUGIO/Files/fuzzing/app.owa-1.5.6.211101184553/PUT/proc33_1_2_1_18_1.chain 
shows the detils of the chain `proc33_1_2_1_18_1.chain`. 
It also can list all POP chains: http://127.0.0.1:5454/chain_analyzer/sink_list.php?dir_path=/FUGIO/Files/fuzzing/app.owa-1.5.6.211101184553/PUT.


