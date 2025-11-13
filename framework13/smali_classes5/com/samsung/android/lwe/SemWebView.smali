.class public Lcom/samsung/android/lwe/SemWebView;
.super Landroid/view/SurfaceView;
.source "SemWebView.java"


# static fields
.field private static final blacklist LweWebViewImpl:Ljava/lang/String; = "com.samsung.android.lwe.LweWebViewImpl"

.field public static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.lwe"

.field private static blacklist USE_LWE:Z = false

.field private static final blacklist isPlatformCode:Z = true

.field private static blacklist pcl:Ldalvik/system/PathClassLoader; = null

.field protected static final blacklist sTag:Ljava/lang/String; = "SemWebView"


# instance fields
.field private final blacklist googlePlatformKey:Landroid/content/pm/Signature;

.field private final blacklist googleTestKey:Landroid/content/pm/Signature;

.field private blacklist mAndroidWebView:Landroid/webkit/WebView;

.field private blacklist mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

.field private final blacklist samsungPlatformKey:Landroid/content/pm/Signature;

.field private final blacklist samsungReleaseKey:Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/lwe/SemWebView;->pcl:Ldalvik/system/PathClassLoader;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/lwe/SemWebView;->USE_LWE:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/lwe/SemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/lwe/SemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 319
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->googlePlatformKey:Landroid/content/pm/Signature;

    .line 86
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->googleTestKey:Landroid/content/pm/Signature;

    .line 89
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->samsungPlatformKey:Landroid/content/pm/Signature;

    .line 91
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->samsungReleaseKey:Landroid/content/pm/Signature;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mAndroidWebView:Landroid/webkit/WebView;

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->checkLWEInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/lwe/SemWebView;->getLWEWebViewInstance(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/samsung/android/lwe/LweWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0, p0}, Lcom/samsung/android/lwe/LweWebView;->initWebView(Landroid/view/View;)V

    .line 326
    :cond_0
    return-void
.end method

.method private blacklist canUseLWE()Z
    .locals 1

    .line 103
    sget-boolean v0, Lcom/samsung/android/lwe/SemWebView;->USE_LWE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkLWEInstallation()Z
    .locals 1

    .line 116
    sget-boolean v0, Lcom/samsung/android/lwe/SemWebView;->USE_LWE:Z

    return v0
.end method

.method private blacklist checkSignature(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    const-string v0, "SemWebView"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 122
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, "android"

    .line 123
    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 124
    .local v3, "platformPackageInfo":Landroid/content/pm/PackageInfo;
    const-string v5, "com.samsung.android.lwe"

    .line 125
    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 127
    .local v4, "lwePackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_7

    if-nez v4, :cond_0

    goto :goto_2

    .line 131
    :cond_0
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_6

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    const/4 v5, 0x0

    .line 137
    .local v5, "validationSucceed":Z
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/samsung/android/lwe/SemWebView;->samsungPlatformKey:Landroid/content/pm/Signature;

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/samsung/android/lwe/SemWebView;->samsungReleaseKey:Landroid/content/pm/Signature;

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 139
    const-string v6, "Signature validation succeed: samsungReleaseKey"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v5, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/samsung/android/lwe/SemWebView;->googlePlatformKey:Landroid/content/pm/Signature;

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    const-string v6, "Skip signature validation: googleTestKey"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v5, 0x1

    goto :goto_0

    .line 146
    :cond_3
    const-string v6, "Unknown key used"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 150
    const/4 v0, 0x1

    return v0

    .line 155
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "platformPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lwePackageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "validationSucceed":Z
    :cond_5
    goto :goto_3

    .line 132
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "platformPackageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "lwePackageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_1
    const-string v5, "PackageInfo.signatures not found"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v1

    .line 128
    :cond_7
    :goto_2
    const-string v5, "PackageInfo not found"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return v1

    .line 152
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "platformPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lwePackageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "apk not found in the PackageManager"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 157
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    const-string v2, "Signature validation failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1
.end method

.method private blacklist getLWEWebViewInstance(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/samsung/android/lwe/LweWebView;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 162
    move-object v1, p0

    const-string v0, "arm64"

    const-string v2, "com.samsung.android.lwe"

    iget-object v3, v1, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v3, :cond_0

    .line 163
    return-object v3

    .line 167
    :cond_0
    const-string v3, "SemWebView"

    const-string v4, "Running platform code..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/samsung/android/lwe/SemWebView;->pcl:Ldalvik/system/PathClassLoader;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/lwe/SemWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/lwe/SemWebView;->checkSignature(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    const-string v0, "apk signature failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-object v4

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/lwe/SemWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 176
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 177
    .local v7, "dexPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dexPath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 180
    .local v2, "nativeLibDir":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nativeLibraryDir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/lwe/SemWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 183
    .local v8, "appNativeLibDir":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "app\'s nativeLibraryDir: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 186
    .local v9, "is64BitDevice":Z
    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 188
    .local v0, "is64BitApp":Z
    const-string v10, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v10, "libLoadingPath":Ljava/lang/String;
    const-string v11, "!/lib/armeabi-v7a"

    const-string v12, ":"

    if-eqz v9, :cond_3

    .line 190
    if-eqz v0, :cond_2

    .line 191
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 192
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!/lib/arm64-v8a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_0

    .line 194
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v2, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 195
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_0

    .line 198
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 199
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 202
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "libLoadingPath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v11, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Lcom/samsung/android/lwe/SemWebView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v11, v7, v10, v12}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v11, Lcom/samsung/android/lwe/SemWebView;->pcl:Ldalvik/system/PathClassLoader;

    .line 206
    .end local v0    # "is64BitApp":Z
    .end local v2    # "nativeLibDir":Ljava/lang/String;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "dexPath":Ljava/lang/String;
    .end local v8    # "appNativeLibDir":Ljava/lang/String;
    .end local v9    # "is64BitDevice":Z
    .end local v10    # "libLoadingPath":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/samsung/android/lwe/SemWebView;->pcl:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_5

    .line 207
    const-string v0, "PathClassLoader failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object v4

    .line 211
    :cond_5
    const-string v2, "com.samsung.android.lwe.LweWebViewImpl"

    invoke-virtual {v0, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 213
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lwe/LweWebView;

    .line 214
    .local v5, "lweWebView":Lcom/samsung/android/lwe/LweWebView;
    const-string v6, "LweWebView creation succeed: platform lib"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    return-object v5

    .line 219
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "lweWebView":Lcom/samsung/android/lwe/LweWebView;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "apk cannot be loaded"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "apk is not installed"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 222
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 224
    :goto_1
    const-string v0, "LweWebView creation failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v4
.end method


# virtual methods
.method public whitelist addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/lwe/LweWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method

.method public whitelist canGoBack()Z
    .locals 1

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->canGoBack()Z

    move-result v0

    return v0

    .line 431
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canGoForward()Z
    .locals 1

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->canGoForward()Z

    move-result v0

    return v0

    .line 445
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->clearCache(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method public whitelist clearHistory()V
    .locals 1

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->clearHistory()V

    .line 511
    :cond_0
    return-void
.end method

.method public whitelist evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p2, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/lwe/LweWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 500
    :cond_0
    return-void
.end method

.method public whitelist getSettings()Lcom/samsung/android/lwe/SemWebSettings;
    .locals 1

    .line 520
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->getSettings()Lcom/samsung/android/lwe/SemWebSettings;

    move-result-object v0

    return-object v0

    .line 523
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUrl()Ljava/lang/String;
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public whitelist goBack()V
    .locals 1

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->goBack()V

    .line 407
    :cond_0
    return-void
.end method

.method public whitelist goForward()V
    .locals 1

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->goForward()V

    .line 418
    :cond_0
    return-void
.end method

.method public whitelist loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    if-nez p2, :cond_0

    .line 367
    const-string/jumbo p2, "text/html"

    .line 369
    :cond_0
    if-nez p3, :cond_1

    .line 370
    const-string p3, "UTF-8"

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/lwe/LweWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_2
    return-void
.end method

.method public whitelist loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->loadUrl(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p0}, Lcom/samsung/android/lwe/LweWebView;->getInputConnectionInstance(Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 266
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/lwe/LweWebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 270
    :cond_0
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 284
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 285
    return-void
.end method

.method public whitelist reload()V
    .locals 1

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->reload()V

    .line 385
    :cond_0
    return-void
.end method

.method public whitelist removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 473
    :cond_0
    return-void
.end method

.method public whitelist setDownloadListener(Lcom/samsung/android/lwe/SemDownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/lwe/SemDownloadListener;

    .line 559
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->setDownloadListener(Lcom/samsung/android/lwe/SemDownloadListener;)V

    .line 562
    :cond_0
    return-void
.end method

.method public whitelist setWebLweClient(Lcom/samsung/android/lwe/SemWebLweClient;)V
    .locals 1
    .param p1, "client"    # Lcom/samsung/android/lwe/SemWebLweClient;

    .line 546
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->setWebLweClient(Lcom/samsung/android/lwe/SemWebLweClient;)V

    .line 549
    :cond_0
    return-void
.end method

.method public whitelist setWebViewClient(Lcom/samsung/android/lwe/SemWebViewClient;)V
    .locals 1
    .param p1, "client"    # Lcom/samsung/android/lwe/SemWebViewClient;

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->setWebViewClient(Lcom/samsung/android/lwe/SemWebViewClient;)V

    .line 537
    :cond_0
    return-void
.end method

.method public whitelist stopLoading()V
    .locals 1

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/lwe/SemWebView;->canUseLWE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebView;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->stopLoading()V

    .line 396
    :cond_0
    return-void
.end method
