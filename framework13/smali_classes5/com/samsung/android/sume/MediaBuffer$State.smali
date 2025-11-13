.class public final enum Lcom/samsung/android/sume/MediaBuffer$State;
.super Ljava/lang/Enum;
.source "MediaBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/MediaBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/MediaBuffer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/MediaBuffer$State;

.field public static final enum blacklist CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

.field public static final enum blacklist OPEN:Lcom/samsung/android/sume/MediaBuffer$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/samsung/android/sume/MediaBuffer$State;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/MediaBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$State;

    const-string v3, "CLOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/MediaBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    .line 50
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sume/MediaBuffer$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/sume/MediaBuffer$State;->$VALUES:[Lcom/samsung/android/sume/MediaBuffer$State;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/MediaBuffer$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 50
    const-class v0, Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaBuffer$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/MediaBuffer$State;
    .locals 1

    .line 50
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer$State;->$VALUES:[Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/MediaBuffer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/MediaBuffer$State;

    return-object v0
.end method
