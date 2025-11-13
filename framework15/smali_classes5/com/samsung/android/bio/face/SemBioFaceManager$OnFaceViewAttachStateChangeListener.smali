.class Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFaceViewAttachStateChangeListener"
.end annotation


# static fields
.field static final blacklist VIEW_TYPE_AUTH:I = 0x1

.field static final blacklist VIEW_TYPE_ENROLL:I = 0x2


# instance fields
.field blacklist mAttr:Landroid/os/Bundle;

.field blacklist mData:[B

.field blacklist mFaceView:Landroid/view/View;

.field blacklist mFlag:I

.field blacklist mSessionId:J

.field blacklist mType:I

.field blacklist mUserId:I

.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "v"    # Landroid/view/View;
    .param p4, "flag"    # I
    .param p5, "userId"    # I
    .param p6, "sessionId"    # J
    .param p8, "data"    # [B
    .param p9, "attr"    # Landroid/os/Bundle;

    .line 2220
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2221
    iput p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    .line 2222
    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    .line 2223
    iput p4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    .line 2224
    iput p5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    .line 2225
    iput-wide p6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mSessionId:J

    .line 2226
    iput-object p8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    .line 2227
    iput-object p9, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    .line 2228
    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 2260
    const-string v0, "SemBioFaceManager"

    const-string v1, "OnFaceViewAttachStateChangeListener : onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2268
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 2272
    const-string v0, "SemBioFaceManager"

    const-string v1, "OnFaceViewAttachStateChangeListener : onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return-void
.end method

.method public blacklist runCommand()V
    .locals 23

    .line 2232
    move-object/from16 v1, p0

    const-string v0, ", "

    const-string v2, "SemBioFaceManager"

    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_0
    new-array v5, v4, [I

    .line 2233
    .local v5, "position":[I
    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2234
    iget-object v6, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2235
    .local v6, "w":I
    iget-object v7, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    move v15, v7

    .line 2236
    .local v15, "h":I
    invoke-static {}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$700()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 2237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnFaceViewAttachStateChangeListener : runCommand : ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_0
    iget v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    if-ne v0, v4, :cond_1

    .line 2241
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v7

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    aget v10, v5, v8

    aget v11, v5, v3

    iget-object v14, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    iget v13, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2242
    invoke-static {v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v16

    iget v12, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    .line 2241
    move-object/from16 v19, v8

    move-object v8, v0

    move v0, v12

    move v12, v6

    move/from16 v17, v13

    move v13, v15

    move/from16 v22, v15

    .end local v15    # "h":I
    .local v22, "h":I
    move/from16 v15, v17

    move/from16 v17, v0

    invoke-interface/range {v7 .. v19}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2243
    .end local v22    # "h":I
    .restart local v15    # "h":I
    :cond_1
    move/from16 v22, v15

    .end local v15    # "h":I
    .restart local v22    # "h":I
    if-ne v0, v3, :cond_2

    .line 2244
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v7

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    aget v10, v5, v8

    aget v11, v5, v3

    iget-wide v14, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mSessionId:J

    iget v13, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2245
    invoke-static {v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v17

    iget v12, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v19

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    iget-object v3, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    .line 2244
    move-object/from16 v20, v8

    move-object v8, v0

    move v0, v12

    move v12, v6

    move/from16 v16, v13

    move/from16 v13, v22

    move/from16 v18, v0

    move-object/from16 v21, v3

    invoke-interface/range {v7 .. v21}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 2247
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    .end local v5    # "position":[I
    .end local v6    # "w":I
    .end local v22    # "h":I
    goto :goto_1

    .line 2248
    :catch_0
    move-exception v0

    .line 2249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception to call enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v3, 0x0

    if-ne v2, v4, :cond_3

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2251
    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 2252
    :cond_3
    iget v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2253
    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 2256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    return-void
.end method
