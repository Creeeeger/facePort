.class public final Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mainHandler:Landroid/os/Handler;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final settingsValue:Landroid/net/Uri;

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->mainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p4, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string/jumbo p1, "smart_view_show_notification_on"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsValue:Landroid/net/Uri;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$settingsListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$settingsListener$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method


# virtual methods
.method public final setup()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsValue:Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "SecHideNotificationShadeInMirrorInteractor"

    const-string/jumbo v1, "setup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;)V

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final tearDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p0, "SecHideNotificationShadeInMirrorInteractor"

    const-string/jumbo v0, "tearDown()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
