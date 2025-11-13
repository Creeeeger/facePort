.class public final Lcom/android/systemui/DessertCaseView$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/DessertCaseView$2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DessertCaseView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$2$1;->this$1:Lcom/android/systemui/DessertCaseView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$2$1;->this$1:Lcom/android/systemui/DessertCaseView$2;

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    return-void
.end method
