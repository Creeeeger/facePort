.class public Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getHasProviders()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->res:Landroid/content/res/Resources;

    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getProviders()Ljava/util/List;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v0, 0x7f0a0930

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0d02db

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    new-instance v0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v3, 0x7f0a0931

    const/4 v4, 0x2

    const v5, 0x7f0d02dc

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    new-instance v1, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v3, 0x7f0a092e

    const/4 v5, 0x3

    const v6, 0x7f0d02d9

    invoke-direct {v1, v3, v5, v2, v6}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    new-instance v2, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    const v3, 0x7f0a092f

    const v6, 0x7f0d02da

    invoke-direct {v2, v3, v5, v4, v6}, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;-><init>(IIII)V

    filled-new-array {p0, v0, v1, v2}, [Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method
