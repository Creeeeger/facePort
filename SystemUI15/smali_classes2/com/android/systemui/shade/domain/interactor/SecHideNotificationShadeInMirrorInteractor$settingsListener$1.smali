.class public final Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$settingsListener$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "smart_view_show_notification_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$settingsListener$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;)V

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
