.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "GtsExpression.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;->INSTANCE:Lcom/samsung/android/gtscell/data/GtsExpressionValue$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
