.class public Lcom/ellison/project/bean/PayUrlBean;
.super Ljava/lang/Object;
.source "PayUrlBean.java"


# instance fields
.field private ID:I

.field private code:I

.field private msg:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/ellison/project/bean/PayUrlBean;->code:I

    return v0
.end method

.method public getID()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/ellison/project/bean/PayUrlBean;->ID:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ellison/project/bean/PayUrlBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ellison/project/bean/PayUrlBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ellison/project/bean/PayUrlBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/ellison/project/bean/PayUrlBean;->code:I

    return-void
.end method

.method public setID(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/ellison/project/bean/PayUrlBean;->ID:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ellison/project/bean/PayUrlBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ellison/project/bean/PayUrlBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ellison/project/bean/PayUrlBean;->url:Ljava/lang/String;

    return-void
.end method
