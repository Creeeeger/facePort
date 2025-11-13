.class public final Landroid/accessibilityservice/SemAccessibilityShortcutInfo;
.super Ljava/lang/Object;
.source "SemAccessibilityShortcutInfo.java"


# instance fields
.field private final blacklist icon:Landroid/graphics/drawable/Drawable;

.field private final blacklist title:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/SemAccessibilityShortcutInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Landroid/accessibilityservice/SemAccessibilityShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public blacklist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/SemAccessibilityShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/SemAccessibilityShortcutInfo;->title:Ljava/lang/String;

    return-object v0
.end method
