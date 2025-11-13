.class public final Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "icon_blacklist"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->postUpdateAll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
