.class Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->-$$Nest$mtoggleKeyboardShortcutsMenu(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    const/4 p0, 0x1

    return p0
.end method
