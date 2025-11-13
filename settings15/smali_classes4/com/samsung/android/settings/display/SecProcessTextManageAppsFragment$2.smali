.class public final Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;

    return-void
.end method


# virtual methods
.method public final onSlide(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->isDebuggableBinary()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "sheet state : "

    const-string v0, "ProcessTextManageApps"

    invoke-static {p2, p1, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
