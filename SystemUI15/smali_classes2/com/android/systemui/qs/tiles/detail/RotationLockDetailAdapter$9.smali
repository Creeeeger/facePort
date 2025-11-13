.class public final Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$9;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$9;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "RotationLockDetailAdapter"

    const-string p1, "mLockSwitch View is not an instance of SwitchCompat"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
