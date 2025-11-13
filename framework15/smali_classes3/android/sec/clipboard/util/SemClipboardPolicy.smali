.class public Landroid/sec/clipboard/util/SemClipboardPolicy;
.super Ljava/lang/Object;
.source "SemClipboardPolicy.java"


# static fields
.field private static final blacklist SAMSUNG_APPLICATION_KEY:Ljava/lang/String; = "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

.field private static final blacklist SAMSUNG_PLATFORM_KEY:Ljava/lang/String; = "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

.field private static final blacklist SAMSUNG_PLATFORM_SEPLITE_KEY:Ljava/lang/String; = "3082041E30820306A003020102020601670C2687F3300D06092A864886F70D01010505003081C4310B3009060355040613024B52311A30180603550408131152657075626C6963206F66204B6F726561311330110603550407130A5375776F6E204369747931253023060355040A131C53616D73756E6720456C656374726F6E69637320436F2E204C74642E31273025060355040B131E4D6F62696C6520436F6D6D756E69636174696F6E7320427573696E657373313430320603550403132B53616D73756E6720506C6174666F726D204B657920666F72206E6F6E2D47616C61787920646576696365733020170D3138313131333038313833315A180F32313138313131323135303030305A3081C4310B3009060355040613024B52311A30180603550408131152657075626C6963206F66204B6F726561311330110603550407130A5375776F6E204369747931253023060355040A131C53616D73756E6720456C656374726F6E69637320436F2E204C74642E31273025060355040B131E4D6F62696C6520436F6D6D756E69636174696F6E7320427573696E657373313430320603550403132B53616D73756E6720506C6174666F726D204B657920666F72206E6F6E2D47616C617879206465766963657330820122300D06092A864886F70D01010105000382010F003082010A0282010100F7049AE9AA6C64C27EBCF799F32BD9118C2870A54B4C9CD200AA33D2F332903B2A6430C608AAC3038B65F644D7A82127EC187099BEB680C71D3593D2522F94C894C018FB8FB08D3282BEA8FEAFE902CE1A11DA806D63366F514B97C6E286221537F758ECE2BCB0B2278C4AE9217FF1C078DDB9401CE490F07557B50F6DDBBE43AACAE52849A5E465010AF4BDF13EAE532771F6C8DC370FE715988D615E67DFF7870BD4393490D17AB71584DBE7EB549DF5B402FB7F0B4DB5CC86E4A818601A183FE94A4A2BAFD29367507F131490AC3E4E38C61F9F86C82CF2B583656B95139CE4E46C3CE04D9A9587316A47062CED72E186D546BCC39896491AD3242BB658B70203010001A3123010300E0603551D0F0101FF0404030205A0300D06092A864886F70D010105050003820101003347014EA4D8C43A387B28331FD3BA02A4AEE7B9ECD340BCE8E517C21EE6CC0E295D999AC5E68352CA59F30B82AA2C0736715CC20710338C34BEACEC99BA7A153CEAD3EC03640F6B764DCFA0FABFA4DF5972B7ABBECF532238AE1A1E2B404379F065C4EA8D148F60EB6F51C783B82B28BC97CC4486BFB08F9BBA956323044B67D4FEFB560C44FA18AEB397C0D87841295DE021BE9599396A0E734D2EC69DDE9B70545DB7AA106901437F07DC6D26F99D97B83380BAD7B42536A47742935FE143684D8F31F07DF44A7C274EAA33BA51863DBE57A1BC66CB988A97ED17F0F86E596C03A511391EC72DC4C79C039657D8B4B4DDD8A2910FA4872A3935D93A6947AD"

.field private static final blacklist SAMSUNG_SHARED_KEY:Ljava/lang/String; = "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

.field private static final blacklist SIGNATURE_MAX:I = 0x4

.field private static final blacklist SIGNATURE_SAMSUNG_APPLICATION:I = 0x2

.field private static final blacklist SIGNATURE_SAMSUNG_PLATFORM:I = 0x1

.field private static final blacklist SIGNATURE_SAMSUNG_PLATFORM_SEPLITE:I = 0x8

.field private static final blacklist SIGNATURE_SAMSUNG_SHARED:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "SemClipboardPolicy"

.field private static blacklist sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;


# instance fields
.field private blacklist mSemClipboardAccessAllowList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSignaturesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSemClipboardAccessAllowList:Ljava/util/HashMap;

    invoke-direct {p0}, Landroid/sec/clipboard/util/SemClipboardPolicy;->setupSignaturesMap()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/sec/clipboard/util/SemClipboardPolicy;
    .locals 1

    sget-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/clipboard/util/SemClipboardPolicy;

    invoke-direct {v0}, Landroid/sec/clipboard/util/SemClipboardPolicy;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    :cond_0
    sget-object v0, Landroid/sec/clipboard/util/SemClipboardPolicy;->sInstance:Landroid/sec/clipboard/util/SemClipboardPolicy;

    return-object v0
.end method

.method private blacklist getSamsungSignatures(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int v3, p1, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSignaturesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist hasSamsungKey(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Landroid/sec/clipboard/util/SemClipboardPolicy;->isMatchedSignature(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method private blacklist isMatchedSignature(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;I)Z"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/sec/clipboard/util/SemClipboardPolicy;->getSamsungSignatures(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    return v1
.end method

.method public static blacklist isSepLite(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist setupSignaturesMap()V
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist canAccessSemClipboard(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "SemClipboardPolicy"

    if-nez p2, :cond_0

    const-string v5, "Failed to get packageName"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-eqz v2, :cond_9

    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist in uid packages : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    nop

    const-wide/32 v5, 0x8000000

    :try_start_0
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v5

    invoke-virtual {v1, p2, v5, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    const-string v3, "App is system App"

    invoke-static {v4, v3}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    const-string v6, "com.samsung.android.clipboard.ACCESS_SEMCLIPBOARD"

    invoke-virtual {v1, v6, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    const-string v3, "SemClipboard Permission is granted"

    invoke-static {v4, v3}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    invoke-static {p1}, Landroid/sec/clipboard/util/SemClipboardPolicy;->isSepLite(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSignaturesMap:Landroid/util/SparseArray;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSignaturesMap:Landroid/util/SparseArray;

    new-instance v9, Landroid/content/pm/Signature;

    const-string v10, "3082041E30820306A003020102020601670C2687F3300D06092A864886F70D01010505003081C4310B3009060355040613024B52311A30180603550408131152657075626C6963206F66204B6F726561311330110603550407130A5375776F6E204369747931253023060355040A131C53616D73756E6720456C656374726F6E69637320436F2E204C74642E31273025060355040B131E4D6F62696C6520436F6D6D756E69636174696F6E7320427573696E657373313430320603550403132B53616D73756E6720506C6174666F726D204B657920666F72206E6F6E2D47616C61787920646576696365733020170D3138313131333038313833315A180F32313138313131323135303030305A3081C4310B3009060355040613024B52311A30180603550408131152657075626C6963206F66204B6F726561311330110603550407130A5375776F6E204369747931253023060355040A131C53616D73756E6720456C656374726F6E69637320436F2E204C74642E31273025060355040B131E4D6F62696C6520436F6D6D756E69636174696F6E7320427573696E657373313430320603550403132B53616D73756E6720506C6174666F726D204B657920666F72206E6F6E2D47616C617879206465766963657330820122300D06092A864886F70D01010105000382010F003082010A0282010100F7049AE9AA6C64C27EBCF799F32BD9118C2870A54B4C9CD200AA33D2F332903B2A6430C608AAC3038B65F644D7A82127EC187099BEB680C71D3593D2522F94C894C018FB8FB08D3282BEA8FEAFE902CE1A11DA806D63366F514B97C6E286221537F758ECE2BCB0B2278C4AE9217FF1C078DDB9401CE490F07557B50F6DDBBE43AACAE52849A5E465010AF4BDF13EAE532771F6C8DC370FE715988D615E67DFF7870BD4393490D17AB71584DBE7EB549DF5B402FB7F0B4DB5CC86E4A818601A183FE94A4A2BAFD29367507F131490AC3E4E38C61F9F86C82CF2B583656B95139CE4E46C3CE04D9A9587316A47062CED72E186D546BCC39896491AD3242BB658B70203010001A3123010300E0603551D0F0101FF0404030205A0300D06092A864886F70D010105050003820101003347014EA4D8C43A387B28331FD3BA02A4AEE7B9ECD340BCE8E517C21EE6CC0E295D999AC5E68352CA59F30B82AA2C0736715CC20710338C34BEACEC99BA7A153CEAD3EC03640F6B764DCFA0FABFA4DF5972B7ABBECF532238AE1A1E2B404379F065C4EA8D148F60EB6F51C783B82B28BC97CC4486BFB08F9BBA956323044B67D4FEFB560C44FA18AEB397C0D87841295DE021BE9599396A0E734D2EC69DDE9B70545DB7AA106901437F07DC6D26F99D97B83380BAD7B42536A47742935FE143684D8F31F07DF44A7C274EAA33BA51863DBE57A1BC66CB988A97ED17F0F86E596C03A511391EC72DC4C79C039657D8B4B4DDD8A2910FA4872A3935D93A6947AD"

    invoke-direct {v9, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v6}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/sec/clipboard/util/SemClipboardPolicy;->hasSamsungKey(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v3, "App key is samsung key"

    invoke-static {v4, v3}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    const-string v7, "App key is not samsung key!!!"

    invoke-static {v4, v7}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/sec/clipboard/util/SemClipboardPolicy;->mSemClipboardAccessAllowList:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_7

    const-string v8, "Allow lists does not include this App"

    invoke-static {v4, v8}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v6, v3}, Landroid/sec/clipboard/util/SemClipboardPolicy;->isMatchedSignature(Ljava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v8, "Allow lists don\'t match this App"

    invoke-static {v4, v8}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    return v3

    :cond_9
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get packageName for uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
