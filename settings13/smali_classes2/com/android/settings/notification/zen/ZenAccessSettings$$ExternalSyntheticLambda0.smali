.class public final synthetic Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenAccessSettings;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenAccessSettings;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/notification/zen/ZenAccessSettings;->$r8$lambda$0QejmRTzLdy8gY_tw6wY8UqUCqw(Lcom/android/settings/notification/zen/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
