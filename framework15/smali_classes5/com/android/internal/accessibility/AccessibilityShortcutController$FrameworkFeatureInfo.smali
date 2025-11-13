.class public abstract Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FrameworkFeatureInfo"
.end annotation


# instance fields
.field private final blacklist mLabelStringResourceId:I

.field private final blacklist mSettingKey:Ljava/lang/String;

.field private final blacklist mSettingOffValue:Ljava/lang/String;

.field private final blacklist mSettingOnValue:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mSettingKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mSettingOnValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mSettingOffValue:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mLabelStringResourceId:I

    return-void
.end method


# virtual methods
.method public blacklist getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mLabelStringResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSettingKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mSettingKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSettingOffValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mSettingOffValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSettingOnValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->mSettingOnValue:Ljava/lang/String;

    return-object v0
.end method
