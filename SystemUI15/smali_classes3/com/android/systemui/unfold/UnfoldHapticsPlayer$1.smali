.class public final Lcom/android/systemui/unfold/UnfoldHapticsPlayer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldHapticsPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$1;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFoldUpdated(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$1;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->isFirstAnimationAfterUnfold:Z

    :cond_0
    return-void
.end method
