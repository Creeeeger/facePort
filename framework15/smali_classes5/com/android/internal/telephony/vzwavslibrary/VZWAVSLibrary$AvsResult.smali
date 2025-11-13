.class final enum Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
.super Ljava/lang/Enum;
.source "VZWAVSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AvsResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

.field public static final enum blacklist DENIED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

.field public static final enum blacklist GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

.field public static final enum blacklist NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

.field public static final enum blacklist NOT_PERMITTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    sget-object v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->DENIED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    sget-object v3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_PERMITTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    new-instance v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    const-string v1, "DENIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->DENIED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    new-instance v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    const-string v1, "NOT_FOUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    new-instance v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    const-string v1, "NOT_PERMITTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_PERMITTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    invoke-static {}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->$values()[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->$VALUES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->$VALUES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v0
.end method
