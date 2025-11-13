.class public final enum Lcom/samsung/android/lock/LsLogType;
.super Ljava/lang/Enum;
.source "LsLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/lock/LsLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist ENROLL:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist KEYERR:Lcom/samsung/android/lock/LsLogType;

.field public static final blacklist LIST:[Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist RESTORE:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist SUMMARY:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/lock/LsLogType;

.field public static final enum blacklist VERIFY:Lcom/samsung/android/lock/LsLogType;


# instance fields
.field private final blacklist mErrorCode:Ljava/lang/String;

.field private final blacklist mMaxSize:J

.field private final blacklist mProperty:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/lock/LsLogType;
    .locals 6

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    sget-object v1, Lcom/samsung/android/lock/LsLogType;->ENROLL:Lcom/samsung/android/lock/LsLogType;

    sget-object v2, Lcom/samsung/android/lock/LsLogType;->VERIFY:Lcom/samsung/android/lock/LsLogType;

    sget-object v3, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    sget-object v4, Lcom/samsung/android/lock/LsLogType;->RESTORE:Lcom/samsung/android/lock/LsLogType;

    sget-object v5, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/lock/LsLogType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 13

    new-instance v6, Lcom/samsung/android/lock/LsLogType;

    const/16 v4, 0x203

    const/16 v5, 0x64

    const-string v1, "SUMMARY"

    const/4 v2, 0x0

    const-string v3, "Summary"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    new-instance v0, Lcom/samsung/android/lock/LsLogType;

    const/16 v11, 0x103

    const/4 v12, 0x0

    const-string v8, "ENROLL"

    const/4 v9, 0x1

    const-string v10, "Enroll"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->ENROLL:Lcom/samsung/android/lock/LsLogType;

    new-instance v0, Lcom/samsung/android/lock/LsLogType;

    const/16 v5, 0x103

    const/16 v6, 0x14

    const-string v2, "VERIFY"

    const/4 v3, 0x2

    const-string v4, "Verify"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->VERIFY:Lcom/samsung/android/lock/LsLogType;

    new-instance v0, Lcom/samsung/android/lock/LsLogType;

    const/16 v12, 0xa

    const-string v8, "KEYERR"

    const/4 v9, 0x3

    const-string v10, "KeystoreErr"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    new-instance v0, Lcom/samsung/android/lock/LsLogType;

    const/4 v6, 0x0

    const-string v2, "RESTORE"

    const/4 v3, 0x4

    const-string v4, "Restore"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->RESTORE:Lcom/samsung/android/lock/LsLogType;

    new-instance v0, Lcom/samsung/android/lock/LsLogType;

    const/4 v12, 0x0

    const-string v8, "UNKNOWN"

    const/4 v9, 0x5

    const-string v10, "Unknown"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/lock/LsLogType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    invoke-static {}, Lcom/samsung/android/lock/LsLogType;->$values()[Lcom/samsung/android/lock/LsLogType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->$VALUES:[Lcom/samsung/android/lock/LsLogType;

    sget-object v1, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    sget-object v2, Lcom/samsung/android/lock/LsLogType;->ENROLL:Lcom/samsung/android/lock/LsLogType;

    sget-object v3, Lcom/samsung/android/lock/LsLogType;->VERIFY:Lcom/samsung/android/lock/LsLogType;

    sget-object v4, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    sget-object v5, Lcom/samsung/android/lock/LsLogType;->RESTORE:Lcom/samsung/android/lock/LsLogType;

    sget-object v6, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    filled-new-array/range {v1 .. v6}, [Lcom/samsung/android/lock/LsLogType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/lock/LsLogType;->mErrorCode:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/lock/LsLogType;->mProperty:I

    mul-int/lit16 p1, p5, 0x400

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/samsung/android/lock/LsLogType;->mMaxSize:J

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/lock/LsLogType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lock/LsLogType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/lock/LsLogType;
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->$VALUES:[Lcom/samsung/android/lock/LsLogType;

    invoke-virtual {v0}, [Lcom/samsung/android/lock/LsLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lock/LsLogType;

    return-object v0
.end method


# virtual methods
.method blacklist containsProperty(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/lock/LsLogType;->mProperty:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogType;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getMaxSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/lock/LsLogType;->mMaxSize:J

    return-wide v0
.end method
