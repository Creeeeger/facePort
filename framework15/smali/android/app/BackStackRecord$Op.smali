.class final Landroid/app/BackStackRecord$Op;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field greylist-max-o cmd:I

.field greylist-max-o enterAnim:I

.field greylist-max-o exitAnim:I

.field greylist-max-o fragment:Landroid/app/Fragment;

.field greylist-max-o popEnterAnim:I

.field greylist-max-o popExitAnim:I


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(ILandroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/BackStackRecord$Op;->cmd:I

    iput-object p2, p0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    return-void
.end method
