.class public interface abstract annotation Landroid/app/ActivityTaskManager$OrientationControlPolicy;
.super Ljava/lang/Object;
.source "ActivityTaskManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OrientationControlPolicy"
.end annotation


# static fields
.field public static final blacklist DISABLED_FROM_ASPECT_RATIO:I = 0x0

.field public static final blacklist DISABLED_FROM_ASPECT_RATIO_BY_SYSTEM:I = 0x80

.field public static final blacklist DISABLED_FROM_FULL_SCREEN:I = 0x20

.field public static final blacklist ENABLED_AS_ASPECT_RATIO:I = 0x1f

.field public static final blacklist ENABLED_AS_ASPECT_RATIO_BY_SYSTEM:I = 0x40

.field public static final blacklist ENABLED_AS_FULL_SCREEN:I = 0x7

.field public static final blacklist LEGACY_ASPECT_RATIO_FLAG:I = 0x18

.field public static final blacklist LEGACY_FULL_SCREEN_FLAG:I = 0x7
