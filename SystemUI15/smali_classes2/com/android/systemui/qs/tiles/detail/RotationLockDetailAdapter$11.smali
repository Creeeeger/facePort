.class public final Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

.field public final synthetic val$callSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;->val$callSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    sget v0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Z)V

    const-wide/16 v1, 0x1e

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;->val$callSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const p2, 0x7f13132a

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const p2, 0x7f131329    # 1.95496E38f

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
