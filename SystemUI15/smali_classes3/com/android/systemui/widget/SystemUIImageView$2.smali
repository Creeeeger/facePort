.class public final Lcom/android/systemui/widget/SystemUIImageView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/widget/SystemUIImageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView$2;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangedLockStarData(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView$2;->this$0:Lcom/android/systemui/widget/SystemUIImageView;

    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsLockStarEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    :cond_0
    return-void
.end method
