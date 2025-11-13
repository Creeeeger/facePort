.class public final synthetic Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/BarFactory;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarFactory;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BarFactory;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BarFactory;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    iput-boolean p0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    :goto_0
    return-void
.end method
