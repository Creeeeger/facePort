.class Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineeringModeNative"
.end annotation


# instance fields
.field private blacklist mClientContext:Landroid/content/Context;

.field private blacklist mSupportJNI:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .line 123
    const-string v0, "engmode_java_manager"

    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->this$0:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    :try_start_0
    const-string p1, ".engmodejni.samsung"

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 126
    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    .line 127
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mSupportJNI:Z

    .line 128
    const-string p1, "em library is enabled, will use library"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 129
    :catch_0
    move-exception p1

    .line 130
    .local p1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-string v1, "em library is disabled, will use service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mSupportJNI:Z

    .line 134
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private native blacklist commandForESS(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method private native blacklist getExpiryDate(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private native blacklist getID(Landroid/content/Context;)[B
.end method

.method private native blacklist getNumOfModes(Landroid/content/Context;)I
.end method

.method private native blacklist getRequestMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI)[B
.end method

.method private native blacklist getServerTime(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private native blacklist getStatus(Landroid/content/Context;I)I
.end method

.method private native blacklist getStatusWithSignature(ILjava/lang/String;II)I
.end method

.method private native blacklist getTUC(Landroid/content/Context;I)I
.end method

.method private native blacklist getToken(Landroid/content/Context;)[B
.end method

.method private native blacklist getTokenInfoForJanus(Landroid/content/Context;[B)[B
.end method

.method private native blacklist installToken(Landroid/content/Context;[B)I
.end method

.method private native blacklist isTokenInstalled(Landroid/content/Context;)I
.end method

.method private native blacklist makeITLReq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native blacklist makeTokenReq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private native blacklist recoveryITL(Landroid/content/Context;[B)I
.end method

.method private native blacklist removeToken(Landroid/content/Context;)I
.end method

.method private native blacklist sendFuseCmd(Landroid/content/Context;)I
.end method


# virtual methods
.method public blacklist _commandForESS(Ljava/lang/String;)[B
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->commandForESS(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist _getExpiryDate()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getExpiryDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist _getID()[B
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getID(Landroid/content/Context;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist _getNumOfModes()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getNumOfModes(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist _getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 6
    .param p1, "singleId"    # Ljava/lang/String;
    .param p2, "otp"    # Ljava/lang/String;
    .param p3, "mode"    # [B
    .param p4, "cnt"    # I

    .line 150
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getRequestMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist _getServerTime()J
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getServerTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "stringTime":Ljava/lang/String;
    const-wide/16 v1, -0x3e8

    .line 206
    .local v1, "returnTime":J
    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 209
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v5

    goto :goto_0

    .line 211
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "date":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "engmode_java_manager"

    const-string v5, "Failed to change time"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const-wide/16 v4, -0x3e8

    return-wide v4

    .line 215
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 217
    return-wide v1
.end method

.method public blacklist _getStatus(ILjava/lang/String;)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->this$0:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-static {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->-$$Nest$fgetmCallerUid(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->this$0:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-static {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->-$$Nest$fgetmSignature(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") call em("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->this$0:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-static {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->-$$Nest$fgetmSignature(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->this$0:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-static {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->-$$Nest$fgetmCallerUid(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->this$0:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-static {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->-$$Nest$fgetmSignature(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getStatusWithSignature(ILjava/lang/String;II)I

    move-result v0

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getStatus(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public blacklist _getTUC(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getTUC(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public blacklist _getToken()[B
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getToken(Landroid/content/Context;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist _installToken([B)I
    .locals 1
    .param p1, "token"    # [B

    .line 154
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->installToken(Landroid/content/Context;[B)I

    move-result v0

    return v0
.end method

.method public blacklist _isTokenInstalled()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isTokenInstalled(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist _makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "singleId"    # Ljava/lang/String;
    .param p2, "otp"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->makeITLReq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist _makeTimeReq()[B
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "9,9,8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getTokenInfoForJanus(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist _makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 6
    .param p1, "singleId"    # Ljava/lang/String;
    .param p2, "otp"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "expiryDate"    # Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->makeTokenReq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist _recoveryITL([B)I
    .locals 1
    .param p1, "recoveryMsg"    # [B

    .line 186
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->recoveryITL(Landroid/content/Context;[B)I

    move-result v0

    return v0
.end method

.method public blacklist _removeToken()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->removeToken(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist _sendFuseCmd()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->sendFuseCmd(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist _updateTime([B)[B
    .locals 6
    .param p1, "resTime"    # [B

    .line 230
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 231
    return-object v0

    .line 233
    :cond_0
    :try_start_0
    const-string v1, "9,9,9,"

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 234
    .local v1, "prefix":[B
    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 236
    .local v2, "command":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    array-length v3, v1

    array-length v5, p1

    invoke-static {p1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mClientContext:Landroid/content/Context;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->getTokenInfoForJanus(Landroid/content/Context;[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    .end local v1    # "prefix":[B
    .end local v2    # "command":[B
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    return-object v0
.end method

.method public blacklist isSupport()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->mSupportJNI:Z

    return v0
.end method
