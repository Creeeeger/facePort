.class public final enum Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
.super Ljava/lang/Enum;
.source "IAllShareConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/IAllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AllShareServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

.field public static final enum blacklist ALLSHARE_SERVICE_CONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

.field public static final enum blacklist ALLSHARE_SERVICE_DISCONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 93
    new-instance v0, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    const-string v1, "ALLSHARE_SERVICE_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_CONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    new-instance v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    const-string v3, "ALLSHARE_SERVICE_DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_DISCONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 91
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->$VALUES:[Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 91
    const-class v0, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    .locals 1

    .line 91
    sget-object v0, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->$VALUES:[Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    return-object v0
.end method
