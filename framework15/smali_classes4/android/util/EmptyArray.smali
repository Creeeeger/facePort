.class public final Landroid/util/EmptyArray;
.super Ljava/lang/Object;
.source "EmptyArray.java"


# static fields
.field public static final blacklist BOOLEAN:[Z

.field public static final blacklist BYTE:[B

.field public static final blacklist CHAR:[C

.field public static final blacklist DOUBLE:[D

.field public static final blacklist FLOAT:[F

.field public static final blacklist INT:[I

.field public static final blacklist LONG:[J

.field public static final blacklist OBJECT:[Ljava/lang/Object;

.field public static final blacklist STRING:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Z

    sput-object v1, Landroid/util/EmptyArray;->BOOLEAN:[Z

    new-array v1, v0, [B

    sput-object v1, Landroid/util/EmptyArray;->BYTE:[B

    new-array v1, v0, [C

    sput-object v1, Landroid/util/EmptyArray;->CHAR:[C

    new-array v1, v0, [D

    sput-object v1, Landroid/util/EmptyArray;->DOUBLE:[D

    new-array v1, v0, [F

    sput-object v1, Landroid/util/EmptyArray;->FLOAT:[F

    new-array v1, v0, [I

    sput-object v1, Landroid/util/EmptyArray;->INT:[I

    new-array v1, v0, [J

    sput-object v1, Landroid/util/EmptyArray;->LONG:[J

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
