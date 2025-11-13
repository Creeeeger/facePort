.class public final Lcom/android/systemui/util/AnimHelper$AnimPairSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/AnimHelper$AnimPairSet;Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;ILjava/lang/Object;)Lcom/android/systemui/util/AnimHelper$AnimPairSet;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->copy(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    return-object p0
.end method

.method public final component2()Lcom/android/systemui/util/AnimHelper$AnimProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    return-object p0
.end method

.method public final copy(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)Lcom/android/systemui/util/AnimHelper$AnimPairSet;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    iget-object v1, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    iget-object v3, p1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    iget-object p1, p1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAnimProperty()Lcom/android/systemui/util/AnimHelper$AnimProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->view:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->animProperty:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnimPairSet(view="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", animProperty="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
