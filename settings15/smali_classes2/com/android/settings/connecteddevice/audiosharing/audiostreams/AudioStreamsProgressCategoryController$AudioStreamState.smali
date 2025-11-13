.class public final enum Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioStreamState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public static final enum ADD_SOURCE_BAD_CODE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public static final enum ADD_SOURCE_FAILED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public static final enum ADD_SOURCE_WAIT_FOR_RESPONSE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public static final enum SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public static final enum SYNCED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public static final enum UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

.field public static final enum WAIT_FOR_SYNC:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    const-string v2, "WAIT_FOR_SYNC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->WAIT_FOR_SYNC:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    const-string v3, "SYNCED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SYNCED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    const-string v4, "ADD_SOURCE_WAIT_FOR_RESPONSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_WAIT_FOR_RESPONSE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    const-string v5, "ADD_SOURCE_BAD_CODE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_BAD_CODE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    new-instance v5, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    const-string v6, "ADD_SOURCE_FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_FAILED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    new-instance v6, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    const-string v7, "SOURCE_ADDED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    filled-new-array/range {v0 .. v6}, [Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 1

    const-class v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 1

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    invoke-virtual {v0}, [Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-object v0
.end method
