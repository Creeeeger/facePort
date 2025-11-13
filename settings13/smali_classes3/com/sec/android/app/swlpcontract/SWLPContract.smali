.class public Lcom/sec/android/app/swlpcontract/SWLPContract;
.super Ljava/lang/Object;
.source "SWLPContract.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final URI_AA_AGREE:Landroid/net/Uri;

.field public static final URI_AA_DISAGREE:Landroid/net/Uri;

.field public static final URI_AA_GET:Landroid/net/Uri;

.field public static final URI_AA_VERSION:Landroid/net/Uri;

.field public static final URI_CBT_AGREE:Landroid/net/Uri;

.field public static final URI_CBT_DISAGREE:Landroid/net/Uri;

.field public static final URI_CBT_GET:Landroid/net/Uri;

.field public static final URI_CBT_VERSION:Landroid/net/Uri;

.field public static final URI_CPP_AGREE:Landroid/net/Uri;

.field public static final URI_CPP_DISAGREE:Landroid/net/Uri;

.field public static final URI_CPP_GET:Landroid/net/Uri;

.field public static final URI_CPP_VERSION:Landroid/net/Uri;

.field public static final URI_DIAGCBT_AGREE:Landroid/net/Uri;

.field public static final URI_DIAGCBT_DISAGREE:Landroid/net/Uri;

.field public static final URI_DIAGCBT_GET:Landroid/net/Uri;

.field public static final URI_DIAGCBT_VERSION:Landroid/net/Uri;

.field public static final URI_DIAGNONSENSITIVE_AGREE:Landroid/net/Uri;

.field public static final URI_DIAGNONSENSITIVE_DISAGREE:Landroid/net/Uri;

.field public static final URI_DIAGNONSENSITIVE_GET:Landroid/net/Uri;

.field public static final URI_DIAGNONSENSITIVE_VERSION:Landroid/net/Uri;

.field public static final URI_DIAGSENSITIVE_AGREE:Landroid/net/Uri;

.field public static final URI_DIAGSENSITIVE_DISAGREE:Landroid/net/Uri;

.field public static final URI_DIAGSENSITIVE_GET:Landroid/net/Uri;

.field public static final URI_DIAGSENSITIVE_VERSION:Landroid/net/Uri;

.field public static final URI_DIAG_AGREE:Landroid/net/Uri;

.field public static final URI_DIAG_DISAGREE:Landroid/net/Uri;

.field public static final URI_DIAG_GET:Landroid/net/Uri;

.field public static final URI_DIAG_VERSION:Landroid/net/Uri;

.field public static final URI_EULA_AGREE:Landroid/net/Uri;

.field public static final URI_EULA_DISAGREE:Landroid/net/Uri;

.field public static final URI_EULA_GET:Landroid/net/Uri;

.field public static final URI_EULA_VERSION:Landroid/net/Uri;

.field public static final URI_GDGP_AGREE:Landroid/net/Uri;

.field public static final URI_GDGP_DISAGREE:Landroid/net/Uri;

.field public static final URI_GDGP_GET:Landroid/net/Uri;

.field public static final URI_GDGP_VERSION:Landroid/net/Uri;

.field public static final URI_PP_AGREE:Landroid/net/Uri;

.field public static final URI_PP_DISAGREE:Landroid/net/Uri;

.field public static final URI_PP_GET:Landroid/net/Uri;

.field public static final URI_PP_VERSION:Landroid/net/Uri;

.field public static final URI_USPD_AGREE:Landroid/net/Uri;

.field public static final URI_USPD_DISAGREE:Landroid/net/Uri;

.field public static final URI_USPD_GET:Landroid/net/Uri;

.field public static final URI_USPD_VERSION:Landroid/net/Uri;

.field private static mIsRequestLastest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SWLProvider::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/sec/android/app/swlpcontract/SWLPContract;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/get"

    .line 38
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/agree"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/disagree"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/eulaprovider/version"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/get"

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAG_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/agree"

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAG_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/disagree"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAG_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagprovider/version"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAG_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/get"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_AA_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/agree"

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_AA_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/disagree"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_AA_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/aaprovider/version"

    .line 49
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_AA_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/get"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_PP_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/agree"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_PP_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/disagree"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_PP_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/ppprovider/version"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_PP_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/get"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_GDGP_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/agree"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_GDGP_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/disagree"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_GDGP_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/gdgpprovider/version"

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_GDGP_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/get"

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_USPD_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/agree"

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_USPD_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/disagree"

    .line 62
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_USPD_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/uspdprovider/version"

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_USPD_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/get"

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CBT_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/agree"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CBT_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/disagree"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CBT_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cbtprovider/version"

    .line 68
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CBT_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/get"

    .line 70
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CPP_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/agree"

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CPP_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/disagree"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CPP_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/cpp2provider/version"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CPP_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/get"

    .line 75
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGCBT_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/agree"

    .line 76
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGCBT_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/disagree"

    .line 77
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGCBT_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagcbt2provider/version"

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGCBT_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/get"

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGNONSENSITIVE_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/agree"

    .line 81
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGNONSENSITIVE_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/disagree"

    .line 82
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGNONSENSITIVE_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagnonsensitive2provider/version"

    .line 83
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGNONSENSITIVE_VERSION:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/get"

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGSENSITIVE_GET:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/agree"

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGSENSITIVE_AGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/disagree"

    .line 87
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGSENSITIVE_DISAGREE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.setupwizardlegalprovider/diagsensitiveprovider/version"

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGSENSITIVE_VERSION:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 157
    sput-boolean v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->mIsRequestLastest:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionTypeOfProcess(I)I
    .locals 0

    .line 315
    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static getProcessByUri(Landroid/net/Uri;)I
    .locals 4

    .line 269
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.setupwizardlegalprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    .line 270
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eulaprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "diagprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    goto/16 :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ppprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aaprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 278
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gdgpprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x32

    goto :goto_0

    .line 280
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uspdprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3c

    goto :goto_0

    .line 282
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cbtprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x46

    goto :goto_0

    .line 284
    :cond_6
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cpp2provider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x50

    goto :goto_0

    .line 286
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "diagcbt2provider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5a

    goto :goto_0

    .line 288
    :cond_8
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "diagnonsensitive2provider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x64

    goto :goto_0

    .line 290
    :cond_9
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "diagsensitiveprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x6e

    goto :goto_0

    :cond_a
    move v0, v1

    :goto_0
    if-lez v0, :cond_e

    .line 295
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 297
    :cond_b
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "agree"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v1, v0, 0x2

    goto :goto_1

    .line 299
    :cond_c
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "disagree"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v1, v0, 0x3

    goto :goto_1

    .line 301
    :cond_d
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v1, v0, 0x4

    goto :goto_1

    :cond_e
    move v1, v0

    .line 309
    :cond_f
    :goto_1
    sget-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " > process: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 9

    .line 172
    invoke-static {p1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getProcessByUri(Landroid/net/Uri;)I

    move-result v0

    .line 174
    invoke-static {v0}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getActionTypeOfProcess(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 176
    invoke-static {p2}, Lcom/sec/android/app/swlpcontract/SWLPContract;->setIsRequestLastest(Z)V

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    .line 178
    invoke-static {p1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->setIsRequestLastest(Z)V

    if-eqz p0, :cond_0

    .line 179
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 180
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 182
    sget-object p0, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    const-string p2, "getString success"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 185
    :cond_0
    sget-object p0, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    const-string p1, "no saved, no raw-data"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 190
    :cond_1
    sget-object p2, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this is not a granted get action("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getVersionByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getVersionByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 8

    .line 245
    invoke-static {p1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getProcessByUri(Landroid/net/Uri;)I

    move-result v0

    .line 247
    invoke-static {v0}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getActionTypeOfProcess(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 248
    invoke-static {p2}, Lcom/sec/android/app/swlpcontract/SWLPContract;->setIsRequestLastest(Z)V

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    .line 250
    invoke-static {v0}, Lcom/sec/android/app/swlpcontract/SWLPContract;->setIsRequestLastest(Z)V

    if-eqz p2, :cond_0

    .line 251
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    sget-object p0, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    const-string p1, "read Version done"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 257
    :cond_0
    sget-object p2, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    const-string v0, "no version is found"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    sget-object p2, Lcom/sec/android/app/swlpcontract/SWLPContract;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this is not a granted ver action("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setIsRequestLastest(Z)V
    .locals 0

    .line 164
    sput-boolean p0, Lcom/sec/android/app/swlpcontract/SWLPContract;->mIsRequestLastest:Z

    return-void
.end method
