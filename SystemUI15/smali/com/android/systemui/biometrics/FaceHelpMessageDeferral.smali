.class public final Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;
.super Lcom/android/systemui/biometrics/BiometricMessageDeferral;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;)V
    .locals 8

    const v0, 0x7f03003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f03003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f070224

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    move-object v1, p0

    move-object v3, v4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;-><init>(Ljava/util/Set;Ljava/util/Set;FLcom/android/keyguard/logging/BiometricMessageDeferralLogger;Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;)V

    return-void
.end method
