.class public final Lcom/samsung/android/gtscell/data/GtsItemSupplier;
.super Ljava/lang/Object;
.source "GtsItemSupplier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/GtsItemSupplier$Companion;
    }
.end annotation


# static fields
.field private static final ALL:I = 0x3

.field private static final BACKUP:I = 0x2

.field public static final Companion:Lcom/samsung/android/gtscell/data/GtsItemSupplier$Companion;

.field private static final SHARE:I = 0x1


# instance fields
.field private allowFeature:I

.field private final expression:Lcom/samsung/android/gtscell/data/GtsSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final item:Lcom/samsung/android/gtscell/data/GtsSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "Lcom/samsung/android/gtscell/data/GtsItemBuilder;",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsItemSupplier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/GtsItemSupplier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->Companion:Lcom/samsung/android/gtscell/data/GtsItemSupplier$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsSupplier;Lcom/samsung/android/gtscell/data/GtsSupplier;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/GtsSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/gtscell/data/GtsSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
            ">;",
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "Lcom/samsung/android/gtscell/data/GtsItemBuilder;",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expression"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->itemKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->expression:Lcom/samsung/android/gtscell/data/GtsSupplier;

    iput-object p3, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->item:Lcom/samsung/android/gtscell/data/GtsSupplier;

    const/4 p1, 0x3

    .line 14
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->allowFeature:I

    return-void
.end method


# virtual methods
.method public final disallowBackup()Lcom/samsung/android/gtscell/data/GtsItemSupplier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->allowFeature:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->allowFeature:I

    return-object p0
.end method

.method public final disallowShare()Lcom/samsung/android/gtscell/data/GtsItemSupplier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->allowFeature:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->allowFeature:I

    return-object p0
.end method

.method public final getCanBackup()Z
    .locals 0

    .line 27
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->allowFeature:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getCanShare()Z
    .locals 1

    .line 26
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->allowFeature:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getExpression()Lcom/samsung/android/gtscell/data/GtsSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->expression:Lcom/samsung/android/gtscell/data/GtsSupplier;

    return-object p0
.end method

.method public final getItem()Lcom/samsung/android/gtscell/data/GtsSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "Lcom/samsung/android/gtscell/data/GtsItemBuilder;",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->item:Lcom/samsung/android/gtscell/data/GtsSupplier;

    return-object p0
.end method

.method public final getItemKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->itemKey:Ljava/lang/String;

    return-object p0
.end method
