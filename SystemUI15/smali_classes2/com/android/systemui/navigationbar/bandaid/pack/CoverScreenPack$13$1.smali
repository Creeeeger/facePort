.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    iget v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    instance-of p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateShowing;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->coverWindowState:I

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
