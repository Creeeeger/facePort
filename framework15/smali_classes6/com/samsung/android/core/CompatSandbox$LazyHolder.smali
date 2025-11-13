.class Lcom/samsung/android/core/CompatSandbox$LazyHolder;
.super Ljava/lang/Object;
.source "CompatSandbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/CompatSandbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist EMPTY_RECT:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_RECT()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/samsung/android/core/CompatSandbox$LazyHolder;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CompatSandbox$LazyHolder;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
