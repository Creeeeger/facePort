.class public Landroid/gesture/Prediction;
.super Ljava/lang/Object;
.source "Prediction.java"


# instance fields
.field public final whitelist name:Ljava/lang/String;

.field public whitelist score:D


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    iput-wide p2, p0, Landroid/gesture/Prediction;->score:D

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    return-object v0
.end method
