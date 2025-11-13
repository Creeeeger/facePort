.class public final Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasTop()Z

    move-result p0

    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasTop()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;

    const v0, 0x7f0a09f8

    invoke-direct {p0, v0}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;-><init>(I)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method
