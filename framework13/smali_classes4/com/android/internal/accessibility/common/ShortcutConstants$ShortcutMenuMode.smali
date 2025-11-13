.class public interface abstract annotation Lcom/android/internal/accessibility/common/ShortcutConstants$ShortcutMenuMode;
.super Ljava/lang/Object;
.source "ShortcutConstants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/common/ShortcutConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ShortcutMenuMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DISABLED:I = 0x5

.field public static final blacklist EDIT:I = 0x1

.field public static final blacklist LAUNCH:I = 0x0

.field public static final blacklist NONE:I = 0x2

.field public static final blacklist OFF:I = 0x4

.field public static final blacklist ON:I = 0x3
