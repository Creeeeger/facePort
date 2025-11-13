.class public Lcom/samsung/app/video/editor/external/PlayerUpdateParams;
.super Ljava/lang/Object;
.source "PlayerUpdateParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist isDeflickerOn:Z

.field private blacklist mFilterInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

.field private blacklist mToneInfo:Lcom/samsung/app/video/editor/external/ToneParams;

.field private blacklist type:Lcom/samsung/app/video/editor/external/UpdateParamType;

.field blacklist updateType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/samsung/app/video/editor/external/LUTInfo;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/LUTInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mFilterInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 21
    new-instance v0, Lcom/samsung/app/video/editor/external/ToneParams;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/ToneParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mToneInfo:Lcom/samsung/app/video/editor/external/ToneParams;

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)V
    .locals 0
    .param p1, "Params"    # Lcom/samsung/app/video/editor/external/PlayerUpdateParams;

    .line 24
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;-><init>()V

    .line 25
    invoke-static {p1, p0}, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->makeCopy(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)V

    .line 26
    return-void
.end method

.method private static blacklist makeCopy(Lcom/samsung/app/video/editor/external/PlayerUpdateParams;Lcom/samsung/app/video/editor/external/PlayerUpdateParams;)V
    .locals 1
    .param p0, "orgParams"    # Lcom/samsung/app/video/editor/external/PlayerUpdateParams;
    .param p1, "newParams"    # Lcom/samsung/app/video/editor/external/PlayerUpdateParams;

    .line 33
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mFilterInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mFilterInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 34
    iget v0, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->updateType:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->updateType:I

    .line 35
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mToneInfo:Lcom/samsung/app/video/editor/external/ToneParams;

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mToneInfo:Lcom/samsung/app/video/editor/external/ToneParams;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist setDeflickerInfo(Z)V
    .locals 0
    .param p1, "isDeflickerOn"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->isDeflickerOn:Z

    .line 47
    return-void
.end method

.method public blacklist setLutInfo(Lcom/samsung/app/video/editor/external/LUTInfo;)V
    .locals 0
    .param p1, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 42
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mFilterInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 43
    return-void
.end method

.method public blacklist setToneInfo(Lcom/samsung/app/video/editor/external/ToneParams;)V
    .locals 0
    .param p1, "toneParams"    # Lcom/samsung/app/video/editor/external/ToneParams;

    .line 49
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->mToneInfo:Lcom/samsung/app/video/editor/external/ToneParams;

    return-void
.end method

.method public blacklist setUpdateParamType(Lcom/samsung/app/video/editor/external/UpdateParamType;)V
    .locals 1
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/UpdateParamType;

    .line 38
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->type:Lcom/samsung/app/video/editor/external/UpdateParamType;

    .line 39
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/UpdateParamType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/PlayerUpdateParams;->updateType:I

    .line 40
    return-void
.end method
