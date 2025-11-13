.class Landroid/app/AppOpInfo;
.super Ljava/lang/Object;
.source "AppOpInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpInfo$Builder;
    }
.end annotation


# instance fields
.field public final blacklist allowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final blacklist code:I

.field public final blacklist defaultMode:I

.field public final blacklist disableReset:Z

.field public final blacklist forceCollectNotes:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist permission:Ljava/lang/String;

.field public final blacklist restrictRead:Z

.field public final blacklist restriction:Ljava/lang/String;

.field public final blacklist simpleName:Ljava/lang/String;

.field public final blacklist switchCode:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;IZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroid/app/AppOpInfo;->code:I

    iput p2, p0, Landroid/app/AppOpInfo;->switchCode:I

    iput-object p3, p0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    iput-object p6, p0, Landroid/app/AppOpInfo;->restriction:Ljava/lang/String;

    iput-object p7, p0, Landroid/app/AppOpInfo;->allowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    iput p8, p0, Landroid/app/AppOpInfo;->defaultMode:I

    iput-boolean p9, p0, Landroid/app/AppOpInfo;->disableReset:Z

    iput-boolean p10, p0, Landroid/app/AppOpInfo;->restrictRead:Z

    iput-boolean p11, p0, Landroid/app/AppOpInfo;->forceCollectNotes:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
