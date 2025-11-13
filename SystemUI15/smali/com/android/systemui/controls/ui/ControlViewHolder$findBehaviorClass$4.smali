.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$4;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$4;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->currentUserId:I

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;-><init>(I)V

    return-object v0
.end method
