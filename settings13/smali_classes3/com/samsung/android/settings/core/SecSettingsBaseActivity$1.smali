.class Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.source "SecSettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->applyExtendedAppBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$1;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->isDisabledAppBar()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
