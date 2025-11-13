.class public interface abstract Landroid/app/AppOpsManager$OnOpStartedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpStartedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpStartedListener$StartedType;
    }
.end annotation


# static fields
.field public static final blacklist START_TYPE_FAILED:I = 0x0

.field public static final blacklist START_TYPE_RESUMED:I = 0x2

.field public static final blacklist START_TYPE_STARTED:I = 0x1


# virtual methods
.method public abstract blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 1

    const/4 v0, 0x2

    if-eq p7, v0, :cond_0

    invoke-interface/range {p0 .. p6}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 10

    if-nez p5, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-interface/range {v0 .. v9}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V

    :cond_0
    return-void
.end method
