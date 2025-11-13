.class public final enum Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
.super Ljava/lang/Enum;
.source "NativeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum blacklist ERROR:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum blacklist INFO:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum blacklist NONE:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum blacklist WARN:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->NONE:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    .line 29
    new-instance v1, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v3, "INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->INFO:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    .line 30
    new-instance v3, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v5, "WARN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->WARN:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    .line 31
    new-instance v5, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->ERROR:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    .line 27
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    return-object v0
.end method
