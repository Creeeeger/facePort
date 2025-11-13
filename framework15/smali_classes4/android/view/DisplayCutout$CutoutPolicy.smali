.class public interface abstract annotation Landroid/view/DisplayCutout$CutoutPolicy;
.super Ljava/lang/Object;
.source "DisplayCutout.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CutoutPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DEFAULT:I = 0x0

.field public static final blacklist NOT_OVERLAP:I = 0x2

.field public static final blacklist OVERLAP:I = 0x1
