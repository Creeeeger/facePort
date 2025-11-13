.class public Lcom/android/settings/datausage/TemplatePreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field public mSubId:I

.field public mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final setTemplate(Landroid/net/NetworkTemplate;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iput p2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    return-void
.end method
