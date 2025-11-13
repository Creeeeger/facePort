.class Lcom/samsung/android/settings/notification/SecRadioPreference$1;
.super Ljava/lang/Object;
.source "SecRadioPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecRadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecRadioPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecRadioPreference;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference$1;->this$0:Lcom/samsung/android/settings/notification/SecRadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 141
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/16 p0, 0x17

    if-eq p2, p0, :cond_0

    const/16 p0, 0x42

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->playSoundEffect(I)V

    return v0

    :cond_1
    :goto_0
    return p3
.end method
