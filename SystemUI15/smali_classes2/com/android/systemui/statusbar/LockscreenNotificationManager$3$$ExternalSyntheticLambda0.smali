.class public final synthetic Lcom/android/systemui/statusbar/LockscreenNotificationManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->-$$Nest$fgetmSettingsListenerForNotificationStyle(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    return-void
.end method
