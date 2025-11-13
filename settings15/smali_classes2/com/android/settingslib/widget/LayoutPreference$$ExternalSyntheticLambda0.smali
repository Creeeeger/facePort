.class public final synthetic Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method
