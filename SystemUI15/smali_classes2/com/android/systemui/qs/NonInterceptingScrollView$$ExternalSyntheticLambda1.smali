.class public final synthetic Lcom/android/systemui/qs/NonInterceptingScrollView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/NonInterceptingScrollView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/NonInterceptingScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/NonInterceptingScrollView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
