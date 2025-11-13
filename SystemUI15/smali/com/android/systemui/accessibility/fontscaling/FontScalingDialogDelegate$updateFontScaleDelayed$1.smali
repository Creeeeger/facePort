.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScaleDelayed$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScaleDelayed$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScaleDelayed$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->strEntryValues:[Ljava/lang/String;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const-string v3, "font_scale"

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScale$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScale$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
