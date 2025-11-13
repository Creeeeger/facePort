.class public Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;
.super Ljava/lang/Object;
.source "RestrictedReceiverFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/RestrictedReceiverFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedAction"
.end annotation


# instance fields
.field public blacklist mAction:Ljava/lang/String;

.field public blacklist mCodePath:Ljava/lang/String;

.field public blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mPackageName:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$RestrictedAction;->mCodePath:Ljava/lang/String;

    .line 229
    return-void
.end method
