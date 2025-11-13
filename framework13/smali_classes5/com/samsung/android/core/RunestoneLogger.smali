.class public Lcom/samsung/android/core/RunestoneLogger;
.super Ljava/lang/Object;
.source "RunestoneLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/RunestoneLogger$ScreenState;,
        Lcom/samsung/android/core/RunestoneLogger$ScreenType;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_SCREEN_LOGGING:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.ACTION_SCREEN_LOGGING"

.field private static final blacklist DEBUG:Z

.field private static final blacklist EXTRA_FOLD_STATE:Ljava/lang/String; = "fold_state"

.field private static final blacklist EXTRA_MULTI_WINDOW_STATE:Ljava/lang/String; = "multi_window_state"

.field private static final blacklist EXTRA_PACKAGES:Ljava/lang/String; = "packages"

.field private static final blacklist EXTRA_SCREEN_TYPE:Ljava/lang/String; = "screen_type"

.field private static final blacklist EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist PERMISSION_SCREEN_LOGGING:Ljava/lang/String; = "com.sec.android.diagmonagent.permission.DIAGMON_SURVEY"

.field private static final blacklist TAG:Ljava/lang/String; = "RunestoneLogger"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/core/RunestoneLogger;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist interpretSaToRunestone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    .line 79
    const-string v0, "1004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p2}, Lcom/samsung/android/core/RunestoneLogger;->sendPairMultiWindow(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static blacklist sendDismissMultiWindowState(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/samsung/android/core/RunestoneLogger;->sendMultiWindowState(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 86
    return-void
.end method

.method private static blacklist sendMultiWindowState(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning sendPairLoggingLocked ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunestoneLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 108
    :pswitch_0
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->MULTIWINDOW_3UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    .line 109
    .local v0, "screenState":Lcom/samsung/android/core/RunestoneLogger$ScreenState;
    goto :goto_0

    .line 105
    .end local v0    # "screenState":Lcom/samsung/android/core/RunestoneLogger$ScreenState;
    :pswitch_1
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->MULTIWINDOW_2UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    .line 106
    .restart local v0    # "screenState":Lcom/samsung/android/core/RunestoneLogger$ScreenState;
    goto :goto_0

    .line 102
    .end local v0    # "screenState":Lcom/samsung/android/core/RunestoneLogger$ScreenState;
    :pswitch_2
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->NONE_MULTIWINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    .line 103
    .restart local v0    # "screenState":Lcom/samsung/android/core/RunestoneLogger$ScreenState;
    nop

    .line 114
    :goto_0
    sget-object v1, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v1}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->getValue()I

    move-result v2

    invoke-static {p0, v1, v2, p1}, Lcom/samsung/android/core/RunestoneLogger;->sendRunestoneLogging(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 115
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist sendPairMultiWindow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "detail"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "packages":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "packageLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 92
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p0, v1}, Lcom/samsung/android/core/RunestoneLogger;->sendMultiWindowState(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 95
    return-void
.end method

.method public static blacklist sendRunestoneLogging(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenType"    # I
    .param p2, "screenState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    .local v0, "timeStamp":J
    sget-boolean v2, Lcom/samsung/android/core/RunestoneLogger;->DEBUG:Z

    const-string v3, "RunestoneLogger"

    if-eqz v2, :cond_1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog screenType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", screenState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", timeStamp : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", packageList : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "screen_type"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    sget-object v4, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v4}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 131
    const-string v4, "fold_state"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 132
    :cond_2
    sget-object v4, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v4}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 133
    const-string v4, "multi_window_state"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 137
    const-string/jumbo v3, "packages"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 138
    :cond_4
    sget-object v4, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v4}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->getValue()I

    move-result v4

    if-ne p1, v4, :cond_5

    sget-object v4, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->NONE_MULTIWINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    .line 139
    invoke-virtual {v4}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->getValue()I

    move-result v4

    if-eq p2, v4, :cond_5

    .line 140
    const-string v4, "Send failed. it\'s MULTI_WINDOW Type, but package list is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 144
    :cond_5
    :goto_2
    const-string/jumbo v3, "timestamp"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.diagmonagent.intent.ACTION_SCREEN_LOGGING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.diagmonagent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 150
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string v5, "com.sec.android.diagmonagent.permission.DIAGMON_SURVEY"

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 152
    return-void
.end method
