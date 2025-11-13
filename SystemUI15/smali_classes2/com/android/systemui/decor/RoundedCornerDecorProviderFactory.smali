.class public final Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasTop()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasBottom()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasTop()Z

    move-result v0

    invoke-interface {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasBottom()Z

    move-result v1

    const v2, 0x7f0a09f7

    const v3, 0x7f0a09f6

    const v4, 0x7f0a09fa

    const v5, 0x7f0a09f9

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v0, v5, v9, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    new-instance v1, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v1, v4, v9, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    new-instance v4, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v4, v3, v6, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    new-instance v3, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v3, v2, v6, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    filled-new-array {v0, v1, v4, v3}, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v0, v5, v9, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    new-instance v1, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v1, v4, v9, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    filled-new-array {v0, v1}, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v0, v3, v6, v8, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    new-instance v1, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    invoke-direct {v1, v2, v6, v7, p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;-><init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V

    filled-new-array {v0, v1}, [Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method
