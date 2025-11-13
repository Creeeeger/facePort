.class Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPendingListenerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQueryUri:Landroid/net/Uri;

.field final synthetic blacklist this$0:Landroid/telecom/CallerInfoAsyncQuery;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/telecom/CallerInfo;
    .locals 0

    iget-object p0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Landroid/telecom/CallerInfoAsyncQuery;

    invoke-static {p2}, Landroid/telecom/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    iput-object p2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected whitelist createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected whitelist onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    new-array v1, v12, [Ljava/lang/Object;

    const-string v13, "CallerInfoAsyncQuery"

    invoke-static {v13, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v14, p2

    check-cast v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    if-nez v14, :cond_1

    const-string v0, "Cookie is null, ignoring onQueryComplete() request."

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget v0, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v15, 0x3

    if-ne v0, v15, :cond_4

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Landroid/telecom/CallerInfoAsyncQuery;

    invoke-static {v0}, Landroid/telecom/CallerInfoAsyncQuery;->-$$Nest$mrelease(Landroid/telecom/CallerInfoAsyncQuery;)V

    if-eqz v11, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_0
    iget v0, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v8, 0x0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_6

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eqz v0, :cond_5

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v1, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    iput-object v1, v0, Landroid/telecom/CallerInfo;->geoDescription:Ljava/lang/String;

    :cond_5
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v0, v8}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    iput v15, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v0

    move v12, v7

    move-object/from16 v7, v16

    move-object v15, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v12, v7

    move-object v15, v8

    :goto_1
    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-nez v0, :cond_e

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    iget v0, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    iget-object v1, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/telecom/CallerInfo;->markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iput-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    goto :goto_2

    :cond_7
    iget v0, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    iget-object v1, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget v2, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v0, v1, v2}, Landroid/telecom/CallerInfo;->markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;

    move-result-object v0

    iput-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    goto :goto_2

    :cond_8
    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, v1, v11}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iput-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v2, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-static {v0, v1, v2}, Landroid/telecom/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eq v0, v1, :cond_9

    iput-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    :cond_9
    iget-object v1, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v2, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v3, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v3, v3, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/CallerInfo;->setPhoneNumber(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-virtual {v1}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput v12, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v14

    invoke-virtual/range {v1 .. v8}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_b

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void

    :cond_c
    :goto_2
    :try_start_1
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v0, v15}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v8}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_3
    iget-object v0, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_f

    iget-object v0, v9, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;

    invoke-direct {v1, v9, v14, v10}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    const-string v0, "There is no listener to notify for this query."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v11, :cond_10

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_11

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v0
.end method
