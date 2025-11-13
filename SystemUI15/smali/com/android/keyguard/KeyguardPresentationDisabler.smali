.class public final Lcom/android/keyguard/KeyguardPresentationDisabler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final KEYS:[I


# instance fields
.field public final mDownCount:[I

.field public mKeyEnabled:Z

.field public mLastDownTime:J

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x18

    const/16 v1, 0x19

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string p1, "KeyguardPresentationDisabler"

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  - mKeyEnabled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    :goto_0
    return-void
.end method

.method public final isEnabled(Landroid/view/DisplayInfo;)Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "KeyguardDisplayManager"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "debug.keyguard.show_presentation"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Show KeyguardPresentation for debugging"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    if-eqz v0, :cond_1

    const-string p0, "Do now show KeyguardPresentation: key enabled"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isSideSyncEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Do not show KeyguardPresentation: sideSync is enabled"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget p0, p1, Landroid/view/DisplayInfo;->flags:I

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    const-string p0, "Do not show KeyguardPresentation: Display.FLAG_NO_LOCK_PRESENTATION"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    return v1
.end method
