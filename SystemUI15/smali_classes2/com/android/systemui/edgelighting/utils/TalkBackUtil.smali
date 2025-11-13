.class public final Lcom/android/systemui/edgelighting/utils/TalkBackUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public mIsTalkbackMode:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    new-instance v1, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;-><init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;-><init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->setTalkBackMode()V

    const-string p0, "TalkBackUtils"

    const-string p1, "TalkBackUtil instance create!!"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/utils/TalkBackUtil;
    .locals 1

    sget-object v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    return-object p0
.end method


# virtual methods
.method public final onInit(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    const-string p0, "TalkBackUtils"

    const-string p1, "Do not init TTS!!"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setTalkBackMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    return-void
.end method
