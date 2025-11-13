.class public Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;
.super Ljava/lang/Object;
.source "RestrictedReceiverFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mCodePath:Ljava/lang/String;

    return-void
.end method
