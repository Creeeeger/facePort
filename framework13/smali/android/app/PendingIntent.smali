.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$CancelListener;,
        Landroid/app/PendingIntent$OnMarshaledListener;,
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;,
        Landroid/app/PendingIntent$Flags;,
        Landroid/app/PendingIntent$CancelListerInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final whitelist FLAG_IMMUTABLE:I = 0x4000000

.field public static final whitelist FLAG_MUTABLE:I = 0x2000000

.field public static final blacklist FLAG_MUTABLE_UNAUDITED:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_NO_CREATE:I = 0x20000000

.field public static final whitelist FLAG_ONE_SHOT:I = 0x40000000

.field public static final whitelist FLAG_UPDATE_CURRENT:I = 0x8000000

.field static final blacklist PENDING_INTENT_EXPLICIT_MUTABILITY_REQUIRED:J = 0x9958763L

.field private static final blacklist TAG:Ljava/lang/String; = "PendingIntent"

.field private static final greylist-max-o sOnMarshaledListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/app/PendingIntent$OnMarshaledListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

.field private blacklist mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

.field private final greylist-max-o mTarget:Landroid/content/IIntentSender;

.field private greylist-max-o mWhitelistToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyCancelListeners(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/PendingIntent;->notifyCancelListeners()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 376
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    .line 1407
    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/IIntentSender;)V
    .locals 1
    .param p1, "target"    # Landroid/content/IIntentSender;

    .line 1460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IIntentSender;

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1462
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/IBinder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IIntentSender;

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1466
    if-eqz p2, :cond_0

    .line 1467
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    .line 1469
    :cond_0
    return-void
.end method

.method private static greylist-max-o buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "serviceKind"    # I

    .line 765
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 766
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    .line 767
    .local v15, "resolvedType":Ljava/lang/String;
    move/from16 v13, p3

    invoke-static {v13, v14}, Landroid/app/PendingIntent;->checkFlags(ILjava/lang/String;)V

    .line 769
    move-object/from16 v12, p0

    :try_start_0
    invoke-virtual {v1, v12}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 771
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 772
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v1, v9, v3

    .line 774
    const/16 v16, 0x0

    if-eqz v15, :cond_0

    new-array v0, v0, [Ljava/lang/String;

    aput-object v15, v0, v3

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, v16

    :goto_0
    const/4 v0, 0x0

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v17

    .line 771
    move/from16 v3, p4

    move-object v4, v14

    move/from16 v8, p1

    move/from16 v11, p3

    move-object v12, v0

    move/from16 v13, v17

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 776
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_1

    new-instance v2, Landroid/app/PendingIntent;

    invoke-direct {v2, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v2

    :cond_1
    return-object v16

    .line 777
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist checkFlags(ILjava/lang/String;)V
    .locals 4
    .param p0, "flags"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 392
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 393
    .local v0, "flagImmutableSet":Z
    :goto_0
    const/high16 v3, 0x2000000

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 395
    .local v1, "flagMutableSet":Z
    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 396
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set both FLAG_IMMUTABLE and FLAG_MUTABLE for PendingIntent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_3
    :goto_2
    const-wide/32 v2, 0x9958763

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    .line 402
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Targeting S+ (version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and above) requires that one of FLAG_IMMUTABLE or FLAG_MUTABLE be specified when creating a PendingIntent.\nStrongly consider using FLAG_IMMUTABLE, only use FLAG_MUTABLE if some functionality depends on the PendingIntent being mutable, e.g. if it needs to be used with inline replies or bubbles."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    .end local v2    # "msg":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void
.end method

.method public static whitelist getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 560
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 613
    .local v0, "user":Landroid/os/UserHandle;
    nop

    .line 614
    if-eqz v0, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object v7, v1

    .line 613
    :goto_0
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 624
    move-object/from16 v1, p0

    move-object/from16 v14, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 625
    .local v15, "packageName":Ljava/lang/String;
    array-length v0, v14

    new-array v13, v0, [Ljava/lang/String;

    .line 626
    .local v13, "resolvedTypes":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v14

    if-ge v0, v2, :cond_0

    .line 627
    aget-object v2, v14, v0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 628
    aget-object v2, v14, v0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 629
    aget-object v2, v14, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "i":I
    :cond_0
    move/from16 v12, p3

    invoke-static {v12, v15}, Landroid/app/PendingIntent;->checkFlags(ILjava/lang/String;)V

    .line 634
    :try_start_0
    instance-of v0, v1, Landroid/app/Activity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_1

    .line 635
    :try_start_1
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p4

    :try_start_2
    invoke-static {v0, v2}, Landroid/app/PendingIntent;->setFreeformInOptionsIfNeeded(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v16, v0

    .end local p4    # "options":Landroid/os/Bundle;
    .local v0, "options":Landroid/os/Bundle;
    goto :goto_2

    .line 644
    .end local v0    # "options":Landroid/os/Bundle;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v2, p4

    :goto_1
    move-object/from16 v16, v2

    move-object/from16 v17, v13

    goto :goto_4

    .line 634
    :cond_1
    move-object/from16 v2, p4

    move-object/from16 v16, v2

    .line 639
    .end local p4    # "options":Landroid/os/Bundle;
    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x2

    .line 641
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 642
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 639
    move-object v4, v15

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v13

    move/from16 v11, p3

    move-object/from16 v12, v16

    move-object/from16 v17, v13

    .end local v13    # "resolvedTypes":[Ljava/lang/String;
    .local v17, "resolvedTypes":[Ljava/lang/String;
    move v13, v0

    :try_start_4
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 643
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_2

    new-instance v2, Landroid/app/PendingIntent;

    invoke-direct {v2, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 644
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_2
    move-exception v0

    goto :goto_4

    .end local v17    # "resolvedTypes":[Ljava/lang/String;
    .restart local v13    # "resolvedTypes":[Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v17, v13

    .end local v13    # "resolvedTypes":[Ljava/lang/String;
    .restart local v17    # "resolvedTypes":[Ljava/lang/String;
    goto :goto_4

    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "resolvedTypes":[Ljava/lang/String;
    .restart local v13    # "resolvedTypes":[Ljava/lang/String;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_4
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v17, v13

    move-object/from16 v16, v2

    .line 645
    .end local v13    # "resolvedTypes":[Ljava/lang/String;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "resolvedTypes":[Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 441
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 477
    .local v0, "user":Landroid/os/UserHandle;
    nop

    .line 478
    if-eqz v0, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object v7, v1

    .line 477
    :goto_0
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 489
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 490
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    .line 491
    .local v16, "resolvedType":Ljava/lang/String;
    move/from16 v14, p3

    invoke-static {v14, v15}, Landroid/app/PendingIntent;->checkFlags(ILjava/lang/String;)V

    .line 493
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 494
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 496
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 497
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v3, p4

    :try_start_1
    invoke-static {v0, v3}, Landroid/app/PendingIntent;->setFreeformInOptionsIfNeeded(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v0

    .end local p4    # "options":Landroid/os/Bundle;
    .local v0, "options":Landroid/os/Bundle;
    goto :goto_0

    .line 507
    .end local v0    # "options":Landroid/os/Bundle;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 496
    :cond_0
    move-object/from16 v3, p4

    move-object/from16 v17, v3

    .line 501
    .end local p4    # "options":Landroid/os/Bundle;
    .local v17, "options":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x2

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v10, v0, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v2, v10, v5

    .line 504
    const/16 v18, 0x0

    if-eqz v16, :cond_1

    new-array v0, v0, [Ljava/lang/String;

    aput-object v16, v0, v5

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object/from16 v11, v18

    .line 505
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 501
    move-object v5, v15

    move/from16 v9, p1

    move/from16 v12, p3

    move-object/from16 v13, v17

    move v14, v0

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 506
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_2

    new-instance v3, Landroid/app/PendingIntent;

    invoke-direct {v3, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v18, v3

    :cond_2
    return-object v18

    .line 507
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v17    # "options":Landroid/os/Bundle;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object/from16 v3, p4

    :goto_2
    move-object/from16 v17, v3

    .line 508
    .end local p4    # "options":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "options":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .line 686
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 687
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    .line 688
    .local v15, "resolvedType":Ljava/lang/String;
    move/from16 v13, p3

    invoke-static {v13, v14}, Landroid/app/PendingIntent;->checkFlags(ILjava/lang/String;)V

    .line 690
    move-object/from16 v12, p0

    :try_start_0
    invoke-virtual {v1, v12}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 692
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v1, v9, v4

    .line 695
    const/16 v16, 0x0

    if-eqz v15, :cond_0

    new-array v0, v0, [Ljava/lang/String;

    aput-object v15, v0, v4

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, v16

    :goto_0
    const/4 v0, 0x0

    .line 696
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    .line 692
    move-object v4, v14

    move/from16 v8, p1

    move/from16 v11, p3

    move-object v12, v0

    move/from16 v13, v17

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 697
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_1

    new-instance v2, Landroid/app/PendingIntent;

    invoke-direct {v2, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v2

    :cond_1
    return-object v16

    .line 698
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;
    .locals 2

    .line 1498
    iget-object v0, p0, Landroid/app/PendingIntent;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    if-nez v0, :cond_0

    .line 1500
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    goto :goto_0

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1506
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    return-object v0
.end method

.method public static whitelist getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 759
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 729
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o notifyCancelListeners()V
    .locals 6

    .line 1148
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    monitor-enter v0

    .line 1150
    :try_start_0
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1151
    .local v1, "cli":Landroid/app/PendingIntent$CancelListerInfo;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fputmCanceled(Landroid/app/PendingIntent$CancelListerInfo;Z)V

    .line 1152
    new-instance v2, Landroid/util/ArraySet;

    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1153
    .local v2, "cancelListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;>;"
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1154
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1156
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1157
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1158
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;Landroid/util/Pair;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1156
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1154
    .end local v0    # "size":I
    .end local v2    # "cancelListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static whitelist readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1451
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1452
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/PendingIntent;

    const-class v2, Landroid/app/PendingIntent;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static blacklist setFreeformInOptionsIfNeeded(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "options"    # Landroid/os/Bundle;

    .line 1511
    if-nez p1, :cond_0

    .line 1512
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1513
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1514
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 1515
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1517
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-r setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/app/PendingIntent$OnMarshaledListener;

    .line 388
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public static whitelist writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "sender"    # Landroid/app/PendingIntent;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1430
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1431
    if-eqz p0, :cond_1

    .line 1432
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent$OnMarshaledListener;

    .line 1433
    .local v0, "listener":Landroid/app/PendingIntent$OnMarshaledListener;
    if-eqz v0, :cond_1

    .line 1434
    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/app/PendingIntent$OnMarshaledListener;->onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    .line 1437
    .end local v0    # "listener":Landroid/app/PendingIntent$OnMarshaledListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1117
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    monitor-enter v0

    .line 1118
    :try_start_0
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCanceled(Landroid/app/PendingIntent$CancelListerInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    monitor-exit v0

    return v2

    .line 1121
    :cond_0
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    if-nez v1, :cond_1

    .line 1122
    new-instance v1, Landroid/app/PendingIntent$CancelListerInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/app/PendingIntent$CancelListerInfo;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListerInfo-IA;)V

    iput-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1124
    :cond_1
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1126
    .local v1, "cli":Landroid/app/PendingIntent$CancelListerInfo;
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    .line 1127
    .local v3, "wasEmpty":Z
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1131
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v5, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2, v5, v1}, Landroid/app/IActivityManager;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1135
    .local v2, "success":Z
    nop

    .line 1136
    if-nez v2, :cond_2

    .line 1137
    :try_start_2
    invoke-static {v1, v4}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fputmCanceled(Landroid/app/PendingIntent$CancelListerInfo;Z)V

    .line 1139
    :cond_2
    monitor-exit v0

    return v2

    .line 1133
    .end local v2    # "success":Z
    :catch_0
    move-exception v2

    .line 1134
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/app/PendingIntent;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    throw v4

    .line 1141
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/PendingIntent;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    :cond_3
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCanceled(Landroid/app/PendingIntent$CancelListerInfo;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v4

    :cond_4
    monitor-exit v0

    return v2

    .line 1143
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    .end local v3    # "wasEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist cancel()V
    .locals 2

    .line 799
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    nop

    .line 803
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1395
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1389
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1390
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1391
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1392
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 1364
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v1, v1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1366
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1365
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1368
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCreatorPackage()Ljava/lang/String;
    .locals 1

    .line 1068
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCreatorUid()I
    .locals 1

    .line 1090
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    return v0
.end method

.method public whitelist getCreatorUserHandle()Landroid/os/UserHandle;
    .locals 2

    .line 1221
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    .line 1222
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1
.end method

.method public greylist getIntent()Landroid/content/Intent;
    .locals 2

    .line 1281
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1282
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    return-object v0

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIntentSender()Landroid/content/IntentSender;
    .locals 3

    .line 790
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    iget-object v2, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public greylist getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1295
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1296
    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    return-object v0

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getTarget()Landroid/content/IIntentSender;
    .locals 1

    .line 1473
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public whitelist getTargetPackage()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1046
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWhitelistToken()Landroid/os/IBinder;
    .locals 1

    .line 1478
    iget-object v0, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1373
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist intentFilterEquals(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "other"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1342
    if-nez p1, :cond_0

    .line 1343
    const/4 v0, 0x0

    return v0

    .line 1346
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0

    .line 1347
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    return v0

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isActivity()Z
    .locals 2

    .line 1250
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isBroadcast()Z
    .locals 2

    .line 1271
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isForegroundService()Z
    .locals 2

    .line 1257
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isImmutable()Z
    .locals 1

    .line 1242
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->isImmutable()Z

    move-result v0

    return v0
.end method

.method public whitelist isService()Z
    .locals 2

    .line 1264
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isTargetedToPackage()Z
    .locals 2

    .line 1231
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1232
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    return v0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method synthetic blacklist lambda$notifyCancelListeners$0$android-app-PendingIntent(Landroid/util/Pair;)V
    .locals 1
    .param p1, "pair"    # Landroid/util/Pair;

    .line 1158
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent$CancelListener;

    invoke-interface {v0, p0}, Landroid/app/PendingIntent$CancelListener;->onCanceled(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist queryIntentComponents(I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1318
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1319
    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1320
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 1321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1323
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1324
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .locals 1
    .param p1, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1099
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/app/PendingIntent;->addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    invoke-interface {p1, p0}, Landroid/app/PendingIntent$CancelListener;->onCanceled(Landroid/app/PendingIntent;)V

    .line 1103
    :cond_0
    return-void
.end method

.method public blacklist removeCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .locals 4
    .param p1, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1179
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    monitor-enter v0

    .line 1180
    :try_start_0
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1181
    .local v1, "cli":Landroid/app/PendingIntent$CancelListerInfo;
    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1184
    :cond_0
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1185
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    .line 1186
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1184
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1189
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 1191
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    goto :goto_1

    .line 1193
    :catch_0
    move-exception v2

    .line 1194
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/PendingIntent;
    .end local p1    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    throw v3

    .line 1197
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/PendingIntent;
    .restart local p1    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    :cond_3
    :goto_1
    monitor-exit v0

    .line 1198
    return-void

    .line 1182
    .restart local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    .line 1197
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist send()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 814
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 815
    return-void
.end method

.method public whitelist send(I)V
    .locals 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 828
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 829
    return-void
.end method

.method public whitelist send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 870
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 871
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 849
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 850
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 908
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 909
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 953
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 954
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 1000
    invoke-virtual/range {p0 .. p7}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1004
    return-void

    .line 1002
    :cond_0
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
.end method

.method public greylist-max-o sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v2, p7

    .line 1015
    const/4 v0, 0x0

    if-eqz v11, :cond_0

    .line 1016
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    move-object/from16 v14, p5

    goto :goto_5

    .line 1017
    :cond_0
    move-object v7, v0

    :goto_0
    nop

    .line 1019
    .local v7, "resolvedType":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1023
    if-eqz v2, :cond_1

    new-instance v3, Landroid/app/ActivityOptions;

    invoke-direct {v3, v2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1024
    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    :goto_1
    nop

    .line 1025
    .local v3, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    .line 1026
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    move-object v13, v2

    .end local p7    # "options":Landroid/os/Bundle;
    .local v2, "options":Landroid/os/Bundle;
    goto :goto_2

    .line 1029
    .end local v2    # "options":Landroid/os/Bundle;
    .end local v3    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_2
    move-object v13, v2

    .end local p7    # "options":Landroid/os/Bundle;
    .local v13, "options":Landroid/os/Bundle;
    :goto_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    iget-object v4, v1, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    .line 1031
    if-eqz v12, :cond_3

    .line 1032
    new-instance v0, Landroid/app/PendingIntent$FinishedDispatcher;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v14, p5

    :try_start_2
    invoke-direct {v0, p0, v12, v14}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    move-object v8, v0

    goto :goto_3

    .line 1033
    :cond_3
    move-object/from16 v14, p5

    move-object v8, v0

    .line 1029
    :goto_3
    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    move-object v10, v13

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    .line 1035
    .end local v7    # "resolvedType":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v14, p5

    :goto_4
    move-object v2, v13

    .line 1036
    .end local v13    # "options":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "options":Landroid/os/Bundle;
    :goto_5
    new-instance v3, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v3, v0}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1379
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1383
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .locals 0
    .param p1, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1168
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->removeCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 1169
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1399
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1400
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent$OnMarshaledListener;

    .line 1401
    .local v0, "listener":Landroid/app/PendingIntent$OnMarshaledListener;
    if-eqz v0, :cond_0

    .line 1402
    invoke-interface {v0, p0, p1, p2}, Landroid/app/PendingIntent$OnMarshaledListener;->onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    .line 1405
    :cond_0
    return-void
.end method
