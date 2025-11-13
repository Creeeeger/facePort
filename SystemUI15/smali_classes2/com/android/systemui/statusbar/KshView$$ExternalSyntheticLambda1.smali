.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshView;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/KshView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/KshView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KshView;->showKshDialog(Ljava/util/List;)V

    return-void
.end method
